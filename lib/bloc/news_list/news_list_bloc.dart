import 'dart:developer';

import 'package:active_list_bloc/failure/main_falure.dart';
import 'package:active_list_bloc/model/news_respo/news_respo.dart';
import 'package:active_list_bloc/service/newsService.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'news_list_event.dart';
part 'news_list_state.dart';
    part 'news_list_bloc.freezed.dart';

@injectable
class NewsListBloc extends Bloc<NewsListEvent, NewsListState> {
 
 final NewsService _newsService;

  NewsListBloc(this._newsService) : super(NewsListState.initial()) {
    on<NewsListEvent>((event, emit) async{
      if(state.newsList.isNotEmpty)
      {
       emit( NewsListState(
        newsSearchList: [], 
        newsList: state.newsList, 
        isLoading: false, 
        isError: false,
        ));
        return;
      }
      emit( const NewsListState(
        newsSearchList: [], 
        newsList: [], 
        isLoading: true, 
        isError: false,
        ));

      //get trending
      final _result = await _newsService.getNews();
      final _state = _result.fold(
        (MainFailure f) {
         return const NewsListState(
        newsSearchList: [], 
        newsList: [], 
        isLoading: false, 
        isError: true,
        );
        },
       (List<Article> list) {
         return NewsListState(
        newsSearchList: [], 
        newsList: list, 
        isLoading: false, 
        isError: false,
        );
       },
       );
       //show to ui
       emit(_state);
      
    });

    //search result
    on<SearchNews>((event, emit) async{
      // call search movie api
      log('Searching for ${event.newsQuery}');
      emit( const NewsListState(
        newsSearchList: [], 
        newsList: [], 
        isLoading: true, 
        isError: false,
        ));
      final _result = await _newsService.searchNews(newsQuery: event.newsQuery);
      final _state = _result.fold(
        (MainFailure f){
          return const NewsListState(
        newsSearchList: [], 
        newsList: [], 
        isLoading: false, 
        isError: true,
        );
        },
         (NewsRespo r) {
           return NewsListState(
        newsSearchList: r.articles,
        newsList: [], 
        isLoading: false, 
        isError: false,
        );          
         },
    );
        //show to ui
        emit(_state);
    });
  }


  }

