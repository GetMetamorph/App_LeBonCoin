import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:untitled/login_page.dart';
import 'package:untitled/welcome_page.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser); //cast to type User;
    _user.bindStream(auth.userChanges());//detect changes
  }

  _initialScreen(User? user){
    if(user == null){
      print("Login page");
      Get.offAll(()=>LoginPage());
    }else{
       Get.offAll(()=>WelcomePage());
    }
  }
}