class Product {
  const Product({required this.name, required this.group, required this.price, required this.imgPath});

  final String name;
  final String group;
  final String imgPath;
  final int price;
}

List<Product> products = const [
    Product(name: 'Chocobars', group: 'Chocolate', imgPath: 'chocobars', price: 100),
    Product(name: 'Chocopuff', group: 'Puff-puff', imgPath: 'chocopuff', price: 150),
    Product(name: 'Choco Biscuits', group: 'Biscuits', imgPath: 'chocobiscuits', price: 300),
    Product(name: 'Creamy Choco', group: 'Chocolate', imgPath: 'creamychoco', price: 400),
    Product(name: 'Chocoly', group: 'Chocolate', imgPath: 'chocoly', price: 1000),
    Product(name: 'Creamy Drink', group: 'Choco drink', imgPath: 'creamychocolate', price: 500),
];