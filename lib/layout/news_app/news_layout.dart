import 'package:first_app/layout/news_app/cubit/cubit/news_cubit.dart';
import 'package:first_app/layout/news_app/cubit/states/news_state.dart';
import 'package:first_app/shared/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'News App',
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ],
            ),
            body: cubit.screens[cubit.currentIndex],
            floatingActionButton: FloatingActionButton(onPressed: (){
              DioHelper.getData(url: 'v2/everything', query:
              {
                'country':'eg',
                'apiKey':'701b879ee99f4f8e8c8b357af84b28d3'
              }).then((value)
              {
                print(value.data['articles'][0]['title']);
              }).catchError((error)
              {
                print(error.toString());
              });
            }),
            bottomNavigationBar: BottomNavigationBar(
              items: cubit.bottomItems,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.ChangeBottomNavBar(index);
              },
            ),
          );
        },
      ),
    );
  }
}
