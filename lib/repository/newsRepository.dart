import 'dart:developer';

import 'package:active_list_bloc/api_endpoint/api_endpoint.dart';
import 'package:active_list_bloc/failure/main_falure.dart';
import 'package:active_list_bloc/model/news_respo/news_respo.dart';
import 'package:active_list_bloc/service/newsService.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: NewsService)
class NewsRepository implements NewsService {
  @override
  Future<Either<MainFailure, List<Article>>> getNews() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.newsApiEndPoint);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final newsmodelList = (response.data['articles'] as List).map((e) {
          return Article.fromJson(e);
        }).toList();
        print(newsmodelList);
        return Right(newsmodelList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
  
  @override
  Future<Either<MainFailure, NewsRespo>> searchNews({required String newsQuery}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.newsApiEndPoint,
        queryParameters: {
          'query': newsQuery,
        },
      );
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewsRespo.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } on DioError catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
 }
