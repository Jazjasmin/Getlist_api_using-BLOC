
import 'package:active_list_bloc/active_model/active_model.dart';
import 'package:active_list_bloc/failure/main_falure.dart';
import 'package:dartz/dartz.dart';

abstract class ActiveStatusService {
  Future<Either<MainFailure, List<Datum>>> getActiveStatus();
}
