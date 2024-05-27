import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

class CartNotifier extends Notifier<Set<Product>> {
  // initial value
  // methods to update state

  @override
  Set<Product> build() {
    return const {
      Product(
          id: '4',
          title: 'Adventure Backpack',
          price: 25,
          image: 'assets/products/backpack.png'),
    };
  }
}

final cartNotifierProvider =
    NotifierProvider<CartNotifier, Set<Product>>(() {
      return CartNotifier();
    });
