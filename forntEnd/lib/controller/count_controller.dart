import 'package:get/get.dart';

class CountController extends GetxController {
  final count = 0.obs;

  void increment() {
    count.value++;
    //update(); //단순상태관리
    //update를 사용하지 않으면 상태값은 변경되지만 화면 갱신이 일어나지 않음
  }
}