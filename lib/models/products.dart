import 'package:meta/meta.dart';

class Product{
  int id;
  String title;
  String seller;
  String price;
  String imgUrl;
  int quantity;

  Product({
    @required this.id,
    @required this.title,
    @required this.seller,
    @required this.price,
    @required this.imgUrl,

    this.quantity = 1
  });

  void incrementQuantity() {
    this.quantity = this.quantity + 1;
  }

  void decrementQuantity() {
    this.quantity = this.quantity -1;
  }
}