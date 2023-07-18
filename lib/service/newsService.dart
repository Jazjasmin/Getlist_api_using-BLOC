import 'package:active_list_bloc/failure/main_falure.dart';
import 'package:active_list_bloc/model/active_model/active_model/active_model.dart';
import 'package:active_list_bloc/model/news_respo/news_respo.dart';
import 'package:dartz/dartz.dart';

abstract class NewsService {
  Future<Either<MainFailure, List<Article>>> getNews();
  Future<Either<MainFailure, NewsRespo>> searchNews({
    required String newsQuery,
  });
}
