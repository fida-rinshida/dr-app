import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/homemodel.dart';
class datacontroller extends GetxController{
  List<Doctor> doctors = [
    Doctor(name: "Dr. Prasad", imagePath: "assets/doctr1.jpg", specialty: "Cardiologist"),
    Doctor(name: "Dr. Stella", imagePath: "assets/doctr2.jpg", specialty: "Neurologist"),
    Doctor(name: "Dr. James", imagePath: "assets/doctr3.jpg", specialty: "Orthopedic"),
    Doctor(name: "Dr. Joseph", imagePath: "assets/doctr4.jpg", specialty: "Dermatologist"),
    Doctor(name: "Dr. Baldwin", imagePath: "assets/doctr5.jpg", specialty: "Pediatrician"),
    Doctor(name: "Dr. Meena ", imagePath: "assets/doctr6.jpg", specialty: "General Practitioner"),
  ];
  var wishlist = <Doctor>[].obs;
  void addItem (Doctor item){
    wishlist.add(item);
  }
  void remove (Doctor item){
    wishlist.remove(item);
  }
}
