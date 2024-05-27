import 'package:riverpod_files/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products_provider.g.dart';

const List<Product> allProducts = [
  Product(
      id: '1',
      title: 'Groovy Shorts',
      price: 12,
      image: 'assets/products/shorts.png'),
  Product(
      id: '2',
      title: 'Karati Shorts',
      price: 15,
      image: 'assets/products/karati.png'),
  Product(
      id: '3',
      title: 'Stylish Jeans',
      price: 20,
      image: 'assets/products/jeans.png'),
  Product(
      id: '4',
      title: 'Adventure Backpack',
      price: 25,
      image: 'assets/products/backpack.png'),
  Product(
      id: '5',
      title: 'Rock Drum Set',
      price: 150,
      image: 'assets/products/drum.png'),
  Product(
      id: '6',
      title: 'Travel Suitcase',
      price: 80,
      image: 'assets/products/suitcase.png'),
  Product(
      id: '7',
      title: 'Roller Skates',
      price: 45,
      image: 'assets/products/skates.png'),
  Product(
      id: '8',
      title: 'Electric Guitar',
      price: 200,
      image: 'assets/products/guitar.png'),
];

@riverpod
List<Product> products(ref) {
  return allProducts;
}

@riverpod
List<Product> reducedProducts(ref) {
  return allProducts.where((p) => p.price < 50).toList();
}