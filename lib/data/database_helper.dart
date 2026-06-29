import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/product.dart';
import 'dart:convert';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('texnomart.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE cart(
        id INTEGER PRIMARY KEY,
        name TEXT,
        image TEXT,
        sale_price REAL,
        count INTEGER,
        product_json TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE favorites(
        id INTEGER PRIMARY KEY,
        name TEXT,
        image TEXT,
        sale_price REAL,
        product_json TEXT
      )
    ''');
  }

  // Cart methods
  Future<void> addToCart(Product product) async {
    final db = await instance.database;
    final existing = await db.query('cart', where: 'id = ?', whereArgs: [product.id]);

    if (existing.isNotEmpty) {
      int count = (existing.first['count'] as int) + 1;
      await db.update('cart', {'count': count}, where: 'id = ?', whereArgs: [product.id]);
    } else {
      await db.insert('cart', {
        'id': product.id,
        'name': product.name,
        'image': product.image,
        'sale_price': product.salePrice,
        'count': 1,
        'product_json': jsonEncode(product.toJson()),
      });
    }
  }

  Future<void> updateCartCount(int id, int count) async {
    final db = await instance.database;
    if (count <= 0) {
      await removeFromCart(id);
    } else {
      await db.update('cart', {'count': count}, where: 'id = ?', whereArgs: [id]);
    }
  }

  Future<void> removeFromCart(int id) async {
    final db = await instance.database;
    await db.delete('cart', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> getCartItems() async {
    final db = await instance.database;
    return await db.query('cart');
  }

  // Favorites methods
  Future<void> toggleFavorite(Product product) async {
    final db = await instance.database;
    final existing = await db.query('favorites', where: 'id = ?', whereArgs: [product.id]);

    if (existing.isNotEmpty) {
      await db.delete('favorites', where: 'id = ?', whereArgs: [product.id]);
    } else {
      await db.insert('favorites', {
        'id': product.id,
        'name': product.name,
        'image': product.image,
        'sale_price': product.salePrice,
        'product_json': jsonEncode(product.toJson()),
      });
    }
  }

  Future<bool> isFavorite(int id) async {
    final db = await instance.database;
    final result = await db.query('favorites', where: 'id = ?', whereArgs: [id]);
    return result.isNotEmpty;
  }

  Future<List<Map<String, dynamic>>> getFavoriteItems() async {
    final db = await instance.database;
    return await db.query('favorites');
  }
}
