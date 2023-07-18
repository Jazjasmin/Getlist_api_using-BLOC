part of 'news_list_bloc.dart';

@freezed
class NewsListEvent with _$NewsListEvent {
  const factory NewsListEvent.initialize() = Initialize;
  const factory NewsListEvent.searchNews({
    required String newsQuery,
  }) = SearchNews;
}