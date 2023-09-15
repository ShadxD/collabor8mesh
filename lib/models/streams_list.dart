import 'package:collabor8mesh/models/streams.dart';
import 'package:flutter/material.dart';

class StreamsList extends ChangeNotifier {
  // list of streams for choice

  List<Streams> streamList = [
    Streams(
        name: 'Engineer',
        imagepath: 'assets/images/engineer.png',
        description: 'Enginnering field'),
    Streams(
        name: 'Medical',
        imagepath: 'assets/images/med.png',
        description: 'Medical field'),
    Streams(
        name: 'Engineer',
        imagepath: 'assets/images/engineer.png',
        description: 'Enginnering field'),
    Streams(
        name: 'Medical',
        imagepath: 'assets/images/med.png',
        description: 'Medical field'),
    Streams(
        name: 'Engineer',
        imagepath: 'assets/images/engineer.png',
        description: 'Enginnering field'),
  ];

  // list of item in user liked
  List<Streams> userCart = [];

  // get list of streams for projects
  List<Streams> getStreamList() {
    return streamList;
  }

  // get cart
  List<Streams> getUserLiked() {
    return userCart;
  }

  // aad item to cart
  void addItemToCart(Streams stream) {
    userCart.add(stream);
    notifyListeners();
  }

  // remove item to cart
  void removeItemFromCart(Streams stream) {
    userCart.remove(stream);
    notifyListeners();
  }
}
