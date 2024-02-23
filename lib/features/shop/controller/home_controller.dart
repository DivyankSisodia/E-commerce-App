import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController instance = Get.find();

  final carouselCurrentIndex = 0.obs;

  void updateCarouselIndex(int index){
    carouselCurrentIndex.value = index;
  }

}