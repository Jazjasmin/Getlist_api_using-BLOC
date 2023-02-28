import 'package:active_list_bloc/failure/main_falure.dart';
import 'package:active_list_bloc/active_model/active_model.dart';
import 'package:active_list_bloc/service/service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../api_endpoint/api_endpoint.dart';

@LazySingleton(as:ActiveStatusService)
class ActiveStatusRepository implements ActiveStatusService {
  @override
  Future<Either<MainFailure, List<Datum>>> getActiveStatus() async{
    try{
       final Response response = await Dio(BaseOptions()).get(ApiEndPoints.newsApiEndPoint);
       if(response.statusCode == 200 || response.statusCode == 201) {
        final newsmodelList = (response.data['data'] as List).map((e) {
          return Datum.fromJson(e);
        }).toList();
        print(newsmodelList);
        return Right(newsmodelList);
       }
     else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
     }
  }
  
