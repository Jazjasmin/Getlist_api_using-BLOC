import 'dart:developer';
import 'package:active_list_bloc/failure/main_falure.dart';
import 'package:active_list_bloc/model/active_model/active_model/active_model.dart';
import 'package:active_list_bloc/service/activeService.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../api_endpoint/api_endpoint.dart';

@LazySingleton(as: ActiveStatusService)
class ActiveStatusRepository implements ActiveStatusService {
  @override
  Future<Either<MainFailure, List<ActiveDatum>>> getActiveStatus() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.activeListApiEndPoint);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final newsmodelList = (response.data['data'] as List).map((e) {
          return ActiveDatum.fromJson(e);
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
  Future<Either<MainFailure, ActiveModel>> searchStatus(
      {required String searchQuery}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.activeListApiEndPoint,
        queryParameters: {
          'query': searchQuery,
        },
      );
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ActiveModel.fromJson(response.data);
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
