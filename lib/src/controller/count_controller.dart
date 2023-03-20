import 'package:get/get.dart';

class CountController extends GetxController {
  RxInt num1 = 100.obs;
  RxInt num2 = 2.obs;

  RxInt calc = 10.obs;

  plusmethod() {
    calc++;
  }

  minusMethod() {
    calc--;
  }


}
