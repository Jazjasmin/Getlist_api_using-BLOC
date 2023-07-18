import 'package:active_list_bloc/bloc/news_list/news_list_bloc.dart';
import 'package:active_list_bloc/screens/active_list_Screens/list_screen.dart';
import 'package:active_list_bloc/screens/news_list_screen/news_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class NewsListResult extends StatelessWidget {
  const NewsListResult({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const SearchTextTitle(title: 'Movies & TV'),
        // SizedBox(height: 10,),
        Expanded(
            child: BlocBuilder<NewsListBloc, NewsListState>(
              builder: (context, state) {
                return ListView.builder( 
                  itemBuilder: (context, index) {
                  final  newsResult = state.newsSearchList[index];
                    return NewsTile(
                  title: newsResult.title ?? "", 
                  description: newsResult.author ?? "",
                  urlToImage: newsResult.urlToImage ?? "");
                  },
                  itemCount: state.newsSearchList.length, 
                
                );
                
              }
            ))
      ],
    );
  }
}

