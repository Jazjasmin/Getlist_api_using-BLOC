import 'package:active_list_bloc/bloc/activeblocstatus/activeblocstatus_bloc.dart';
import 'package:active_list_bloc/debounce.dart';
import 'package:active_list_bloc/screens/active_list_Screens/list_screen.dart';
import 'package:active_list_bloc/screens/bottom_nav/bottom_nav_screen.dart';
import 'package:active_list_bloc/screens/active_list_Screens/search_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListMainScreen extends StatelessWidget {
  ListMainScreen({super.key});

  final _debouncer = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        CupertinoSearchTextField(
          backgroundColor: Colors.grey.withOpacity(0.4),
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          suffixIcon: const Icon(
            CupertinoIcons.xmark_circle_fill,
            color: Colors.grey,
          ),
          style: const TextStyle(
            color: Colors.black,
          ),
          onChanged: (value) {
            if (value.isEmpty) {
              return;
            }
            _debouncer.run(() {
              BlocProvider.of<ActiveblocstatusBloc>(context)
                  .add(SearchStatus(searchQuery: value));
            });
          },
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(child:
            BlocBuilder<ActiveblocstatusBloc, ActiveblocstatusState>(
                builder: (context, state) {
          if (state.searchReslut.isEmpty) {
            return const ListScreen();
          } else {
            return const SearchResult();
          }
        })),
      ]),
    )));
  }
}
