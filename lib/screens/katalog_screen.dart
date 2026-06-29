import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../api/api_service.dart';
import '../models/category.dart';
import 'product_list_screen.dart';

class KatalogScreen extends StatefulWidget {
  const KatalogScreen({super.key});

  @override
  State<KatalogScreen> createState() => _KatalogScreenState();
}

class _KatalogScreenState extends State<KatalogScreen> {
  final ApiService _apiService = GetIt.I<ApiService>();
  List<Category>? _categories;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadCatalog();
  }

  Future<void> _loadCatalog() async {
    try {
      final response = await _apiService.getCatalog();
      // Handle different response structures if necessary
      final List<dynamic> data = response['data']['data'];
      setState(() {
        _categories = data.map((e) => Category.fromJson(e)).toList();
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog', style: TextStyle(color: Colors.black)),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
              ? Center(child: Text('Xatolik yuz berdi: $_error'))
              : ListView.separated(
                  itemCount: _categories?.length ?? 0,
                  separatorBuilder: (context, index) => const Divider(height: 1),
                  itemBuilder: (context, index) {
                    final category = _categories![index];
                    return ListTile(
                      title: Text(category.title),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        if (category.children != null && category.children!.isNotEmpty) {
                          _showSubCategories(category);
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductListScreen(category: category),
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
    );
  }

  void _showSubCategories(Category parent) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SubKatalogScreen(parent: parent),
      ),
    );
  }
}

class SubKatalogScreen extends StatelessWidget {
  final Category parent;
  const SubKatalogScreen({super.key, required this.parent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(parent.title, style: const TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.separated(
        itemCount: parent.children?.length ?? 0,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final child = parent.children![index];
          return ListTile(
            title: Text(child.title),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              if (child.children != null && child.children!.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SubKatalogScreen(parent: child),
                  ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductListScreen(category: child),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
