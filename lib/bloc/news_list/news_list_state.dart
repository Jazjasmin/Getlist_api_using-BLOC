part of 'news_list_bloc.dart';

@freezed
class NewsListState with _$NewsListState {
  const factory NewsListState(
    {
      required List<Article> newsSearchList,
      required List<Article> newsList,
      required bool isLoading,
      required bool isError,
    }
  ) = _NewsListState;

  factory NewsListState.initial() => NewsListState(
    newsSearchList: [], 
    newsList: [], 
    isLoading: false, 
    isError: false,
    );
}
