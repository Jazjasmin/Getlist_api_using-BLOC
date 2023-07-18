import 'package:active_list_bloc/bloc/news_list/news_list_bloc.dart';
import 'package:active_list_bloc/debounce.dart';
import 'package:active_list_bloc/screens/news_list_screen/news_list_screen.dart';
import 'package:active_list_bloc/screens/news_list_screen/news_search_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsListMainScreen extends StatelessWidget {
  NewsListMainScreen({Key? key}) : super(key: key);

  final _debouncer = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewsListBloc>(context).add(const Initialize());
    });
    return Scaffold(
      //backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
                color: Colors.white,
              ),
              onChanged: (value) {
                if (value.isEmpty) {
                  return;
                }
                _debouncer.run(() {
                  BlocProvider.of<NewsListBloc>(context)
                      .add(SearchNews(newsQuery: value));
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(child: BlocBuilder<NewsListBloc, NewsListState>(
                builder: (context, state) {
          if (state.newsSearchList.isEmpty) {
            return const NewsListScreen();
          } else {
            return  NewsListResult();
          }
        })),
          ],
        ),
      )),
    );
  }
}
