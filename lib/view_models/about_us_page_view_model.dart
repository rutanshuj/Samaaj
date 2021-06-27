import 'package:Samaaj/web_services/backend_web_services.dart';
import 'package:flutter/cupertino.dart';

class AboutUsPageViewModel extends ChangeNotifier {

  BackendWebServices _backendWebServices = BackendWebServices();

  bool isLoading = false;
  String isError = "";


  Future<void> validateForm({String name, String email, String phoneNumber, String message}) async{

    if(name.isEmpty) {
      this.isError = "Please Enter You Name";
    } else if(email.isEmpty && phoneNumber.isEmpty) {
      this.isError = "Please Enter Either Phone Number or Email";
    } else if(message.isEmpty) {
      this.isError = "Please Enter Your Message";
    } else {
      try {
        if(phoneNumber.isNotEmpty) {
          int.parse(phoneNumber);
          setLoading();
          await _backendWebServices.postMessage(
            message: message,
            phoneNumber: int.parse(phoneNumber),
            email: email,
            name: name,
          );
        }
      } catch(e) {
        print(e);
        if(e.toString() == "api-call-failed") {
          this.isError = "Please try again later";
        } else {
          this.isError = "Please Enter A Valid Phone Number";
        }
      }
    }
    cancelLoading();
  }

  resetError() {
    this.isError = "";
    notifyListeners();
  }

  setLoading() {
    this.isLoading = true;
    notifyListeners();
  }

  cancelLoading() {
    this.isLoading = false;
    notifyListeners();
  }

}