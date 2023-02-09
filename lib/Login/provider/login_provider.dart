import 'package:controlla/Login/service/login_service.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  
  bool loader = false;
  Future? loginWithEmailUsingFirebase(email, password, context) async {
    try {

     notifyListeners();
     loader = true;
   await  LoginFirebaseService.getInstance()
          .loginWithEmail(email, password, context);

     //     .then((value) {

      //   notifyListeners();
      //   loader = false;
      //    notifyListeners();

      // });

      notifyListeners();
      loader = false;
      // return "Login";
      return "login";
    } catch(e){
      return "error";
    }
  }
}
