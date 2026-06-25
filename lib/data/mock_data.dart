import '../models/category.dart';
import '../models/brand.dart';
import '../models/banner.dart';

class MockData {
  static List<BannerItem> banners = [
    BannerItem(
      image: 'https://mini-io-api.texnomart.uz/newcontent/slider/484/2j7MdjfyplRjXxOg9ArSm4Fe0akhPM13lE9CE0b4.webp',
      link: '/promotions/polucite-priiatnyi-podarok-pri-pokupke-honor-x9d/',
    ),
    BannerItem(
      image: 'https://mini-io-api.texnomart.uz/newcontent/slider/404/LUCq4f6JBMvacxKZ31wmvtrpAvc29N0eorVJXeoN.webp',
      link: '/promotions/mazzza-narxlar/',
    ),
    BannerItem(
      image: 'https://mini-io-api.texnomart.uz/newcontent/slider/485/LDX7BMhs9efVKCa9RxNuKzPgiPPnhs2M42BSImMF.webp',
      link: '/promotions/bolsoi-futbol-bolsoi-ekran-bolsie-emocii/',
    ),
    BannerItem(
      image: 'https://mini-io-api.texnomart.uz/newcontent/slider/476/gRyURhTrKvlrIEOWppI6UPIwavu0JUUaCkembL1C.webp',
      link: '/promotions/akciia-0-0-24/',
    ),
    BannerItem(
      image: 'https://mini-io-api.texnomart.uz/newcontent/slider/471/lMPWyZn0wMYY9MpTb0TsA2jvwgGrChHXLb7EMt48.webp',
      link: '/promotions/texnika-bez-lisnego-poka-est-lovi-moment/',
    ),
    BannerItem(
      image: 'https://mini-io-api.texnomart.uz/newcontent/slider/418/i5zBTncoJdwdEsjsiKQbmkRz18ukWC8qzs1SJo1Z.webp',
      link: '/promotions/50-0-2/',
    ),
    BannerItem(
      image: 'https://mini-io-api.texnomart.uz/newcontent/slider/347/YXXP2l0QDhUaENFOjkp1kaTXrNYN3CyMhFqxTpmn.webp',
      link: '/promotions/dom-milyi-dom/',
    ),
    BannerItem(
      image: 'https://mini-io-api.texnomart.uz/newcontent/slider/353/hXE0y8ySQCNA1JJm174N4ZhMDqMuW5ibI2q0Alj6.webp',
      link: '/promotions/bystraia-dostavka/',
    ),
  ];
  static List<Category> categories = [
    Category(
      slug: 'smartfony',
      title: 'Smartfonlar',
      imageUrl: 'https://mini-io-api.texnomart.uz/catalog/special-category/4/aa4237cb-9bc4-4941-8535-277ca7831f48.png',
    ),
    Category(
      slug: 'vse-kondicionery-5',
      title: 'Havo sovutgichlar',
      imageUrl: 'https://mini-io-api.texnomart.uz/catalog/special-category/8/61521f46-27bb-4ba1-8fa7-34f3bc6e9530.png',
    ),
    Category(
      slug: 'pylesosy',
      title: 'Changyutgichlar',
      imageUrl: 'https://mini-io-api.texnomart.uz/catalog/special-category/5/ade607e8-e08e-40a1-85c1-b291327fe412.png',
    ),
    Category(
      slug: 'holodilniki', // API dan 'holodilniki' kelyapti
      title: 'Muzlatgichlar',
      imageUrl: 'https://mini-io-api.texnomart.uz/catalog/special-category/7/74a09808-7198-496a-b704-158399923abd.png',
    ),
    Category(
      slug: 'uvlazhniteli-vozduha', // API dan 'uvlazhniteli-vozduha' kelyapti
      title: 'Havo namlagichlar',
      imageUrl: 'https://mini-io-api.texnomart.uz/catalog/special-category/8/61521f46-27bb-4ba1-8fa7-34f3bc6e9530.png', // Havo sovutgichlar rasmini vaqtincha ishlatamiz yoki aniqrog'ini qo'yamiz
    ),
    Category(
      slug: 'noutbuki',
      title: 'Noutbuklar',
      imageUrl: 'https://mini-io-api.texnomart.uz/catalog/special-category/22/1f3896fc-fbb9-4d2f-ac2e-17df4bf4959b.png',
    ),
    Category(
      slug: 'televizory',
      title: 'Televizorlar',
      imageUrl: 'https://mini-io-api.texnomart.uz/catalog/special-category/9/e84d9227-6eef-4f6c-94f4-a26258c5d5a1.png',
    ),
    Category(
      slug: 'kofemashiny-i-kofevarki',
      title: 'Qahva mashinalari',
      imageUrl: 'https://mini-io-api.texnomart.uz/catalog/special-category/23/a206c805-83f1-4965-9da7-876b8124fcee.png',
    ),
    Category(
      slug: 'stiralnye-mashinki',
      title: 'Kir yuvish mashinalari',
      imageUrl: 'https://mini-io-api.texnomart.uz/catalog/special-category/11/b9e70df6-9f7a-49aa-a5fc-7ebd8e517ab6.png',
    ),
    Category(
      slug: 'fen-dlya-volos',
      title: 'Fenlar',
      imageUrl: 'https://mini-io-api.texnomart.uz/catalog/special-category/10/d234e541-a133-4377-a68f-fbf28d5901b4.png',
    ),
    Category(
      slug: 'planshety',
      title: 'Planshetlar',
      imageUrl: 'https://mini-io-api.texnomart.uz/catalog/special-category/6/dd88365c-fc33-4062-a6fe-aa2e0d5b4dd8.png',
    ),
  ];

  static List<Brand> brands = [
    Brand(id: 'b1', name: 'LG', imageUrl: 'assets/images/img1.png'),
    Brand(id: 'b2', name: 'SAMSUNG', imageUrl: 'assets/images/img1.png'),
    Brand(id: 'b3', name: 'Xiaomi', imageUrl: 'assets/images/img1.png'),
    Brand(id: 'b4', name: 'HUAWEI', imageUrl: 'assets/images/img1.png'),
  ];
}
