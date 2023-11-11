import 'package:get/get.dart';

class HomeController extends GetxController {
  final String rooms = 'rooms';
  final String adults = 'adults';
  final String childrens = 'childrens';
  var roomsNum = 1.obs;
  var adultNums = 1.obs;
  var chieldrensNum = 1.obs;
  void increment(String type) {
    if (type == rooms) {
      roomsNum += 1;
    } else if (type == adults) {
      adultNums += 1;
    } else {
      chieldrensNum += 1;
    }
    update();
  }

  void decrement(String type) {
    if (type == rooms) {
      roomsNum -= 1;
    } else if (type == adults) {
      adultNums -= 1;
    } else {
      chieldrensNum -= 1;
    }
    update();
  }
}
