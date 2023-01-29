class Product {
  String image;
  String cardname;
  Product({required this.image, required this.cardname});
}

class Data1 {
  static List<Product> products = [
    Product(
        image:
            'https://m.media-amazon.com/images/G/40/gc/designs/livepreview/amazon_blue_noto_email_v2016_sa-main._CB435184208_.jpg',
        cardname: 'Amazon'),
    Product(
        image:
            'https://cdn.yougotagift.com/media/images/cards/store/tmpemfKj9.jpg',
        cardname: 'SHEIN'),
    Product(
        image:
            'https://cdn.yougotagift.com/media/images/cards/store/tmp9HNuoY.jpg',
        cardname: 'Namshi'),
    Product(
        image:
            'https://cdn.yougotagift.com/media/images/cards/store/tmpMefhke.jpg',
        cardname: 'Jarir Bookstore'),
    Product(
        image:
            'https://cdn.yougotagift.com/media/images/cards/store/tmpWjVkzT.jpg',
        cardname: 'Nahdi Pharmacies')
  ];
  static List<Product> cart = [];
}

class Data2 {
  static List<Product> products = [
    Product(
        image:
            'https://d1i8t2ah6myua2.cloudfront.net/uploads/cards/pictures/e8624f1ff1ae04dfae92353dc872bdb8d2f3b72c.jpg?1671057352',
        cardname: 'Celebration'),
    Product(
        image:
            'https://d1i8t2ah6myua2.cloudfront.net/uploads/cards/pictures/b38a70057344d43a6452f2e0847b29a17b8ded72.jpg?1670015604',
        cardname: 'Thank You'),
    Product(
        image:
            'https://d1i8t2ah6myua2.cloudfront.net/uploads/cards/pictures/7482925764eb584fa632e6ea2d825d343dd11bb7.jpg?1669993785',
        cardname: 'Birthday'),
    Product(
        image:
            'https://d1i8t2ah6myua2.cloudfront.net/uploads/cards/pictures/265c675f1ab2451690c7addcf2f019f11395cb03.jpg?1673456144',
        cardname: 'Love'),
    Product(
        image:
            'https://d1i8t2ah6myua2.cloudfront.net/uploads/cards/pictures/e3ae3861ea40b859be1338a382ebbd433967a8ff.jpg?1674164365',
        cardname: 'Just Because')
  ];
  static List<Product> cart = [];
}
