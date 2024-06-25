import 'package:first_app/layout/news_app/cubit/states/news_state.dart';
import 'package:first_app/modules/news_app/business/business_screen.dart';
import 'package:first_app/modules/news_app/science/science_screen.dart';
import 'package:first_app/modules/news_app/setting_screen/setting_screen.dart';
import 'package:first_app/modules/news_app/sports/sport_screen.dart';
import 'package:first_app/shared/network/remote/dio_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.business),
      label: 'Business'
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.sports),
      label: 'Sports'
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.science),
      label: 'Science'
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Settings'
    ),
  ];

  List<Widget> screens =
  [
    BusinessScreen(),
    SportScreen(),
    ScienceScreen(),
    SettingScreen(),
  ];

  void ChangeBottomNavBar(int index)
  {
    currentIndex = index;
    emit(NewsBottomNavState());
  }


  List<dynamic> business = [];
  
  void getBusiness()
  {
    emit(NewsLoadingBusinessState());
    DioHelper.getData(url: 'v2/everything', query:
    {
      'country':'eg',
      'apiKey':'701b879ee99f4f8e8c8b357af84b28d3'
    }).then((value)
    {
      print(value.data['articles'][0]['title']);

      emit(NewsGetBusinessSuccessState());

    }).catchError((error)
    {
      print(error.toString());
      emit(NewsGetBusinessErrorState(error));

    });
    
  }

}
