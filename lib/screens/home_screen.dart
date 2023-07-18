import 'package:active_list_bloc/screens/active_list_Screens/list_main_screen.dart';
import 'package:active_list_bloc/screens/bottom_nav/bottom_nav_screen.dart';
import 'package:active_list_bloc/screens/news_list_screen/news_list_main_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final pages = [ListMainScreen(), NewsListMainScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavWidget(),
    );
  }
}
