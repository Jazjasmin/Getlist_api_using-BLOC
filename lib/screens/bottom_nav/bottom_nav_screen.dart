import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.green.shade100,
            selectedLabelStyle: const TextStyle(
              fontSize: 11,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 11,
            ),
            selectedIconTheme: const IconThemeData(
              color: Colors.black,
            ),
            unselectedIconTheme: IconThemeData(
              color: Colors.green.shade100,
            ),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.people_outline_outlined), label: "List"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people_outline_outlined), label: "News")
            ]);
      },
    );
  }
}
