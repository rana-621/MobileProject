import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit() : super(VerificationInitial());
  TextEditingController pincode=TextEditingController();
String validcode="22222";
  void onTapConfirm() {
    if(pincode.text==validcode){
      print("valid");
    }
    else{
      print("invalid");
    }
  }
}
