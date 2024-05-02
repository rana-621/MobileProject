import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';


part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitial());
  int selectedTabIndex=0;
  final PageController pageController=PageController();
  void onChangeTabIndex(int index){
    /*if(index==2){
      throw 'dummy exception from mobile';
    }*/
    selectedTabIndex=index;
    pageController.jumpToPage(selectedTabIndex);
    emit(DashboardInitial());
  }
}
