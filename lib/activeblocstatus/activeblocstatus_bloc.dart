import 'package:active_list_bloc/failure/main_falure.dart';
import 'package:active_list_bloc/service/service.dart';
import 'package:bloc/bloc.dart';
import 'package:active_list_bloc/active_model/active_model.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'activeblocstatus_event.dart';
part 'activeblocstatus_state.dart';
part 'activeblocstatus_bloc.freezed.dart';

@injectable
class ActiveblocstatusBloc extends Bloc<ActiveblocstatusEvent, ActiveblocstatusState> {
  final ActiveStatusService _activestatusservice;
  ActiveblocstatusBloc(this._activestatusservice 
  ) : super(ActiveblocstatusState.initial()) {
    on<ActiveblocstatusEvent>((event, emit) async {
      if(state.activestatuslist.isNotEmpty) {
        emit(ActiveblocstatusState(
          activestatuslist: state.activestatuslist,
          isLoading: false,
          isError: false,
          ));
          return;
      }
      emit( const ActiveblocstatusState(
        activestatuslist: [], 
        isLoading: true, 
        isError: false,
        ));
        final _result= await _activestatusservice.getActiveStatus();
        final _state = _result.fold(
          (MainFailure r){
            return const ActiveblocstatusState(
              activestatuslist: [], 
              isLoading: false, 
              isError: true,
              );
          }, 
          (List<Datum> list) {
            return ActiveblocstatusState(
              activestatuslist: list, 
              isLoading: false, 
              isError: false,
              );
          });
          emit(_state);
     
    });      
  }
}
