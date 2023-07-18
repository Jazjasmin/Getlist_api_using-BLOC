import 'package:active_list_bloc/failure/main_falure.dart';
import 'package:active_list_bloc/model/active_model/active_model/active_model.dart';
import 'package:dartz/dartz.dart';

abstract class ActiveStatusService {
  Future<Either<MainFailure, List<ActiveDatum>>> getActiveStatus();
  Future<Either<MainFailure, ActiveModel>> searchStatus({
    required String searchQuery,
  });
}
