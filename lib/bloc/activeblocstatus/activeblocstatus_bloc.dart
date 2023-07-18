import 'package:active_list_bloc/failure/main_falure.dart';
import 'package:active_list_bloc/model/active_model/active_model/active_model.dart';
import 'package:active_list_bloc/service/activeService.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'activeblocstatus_event.dart';
part 'activeblocstatus_state.dart';
part 'activeblocstatus_bloc.freezed.dart';

@injectable
class ActiveblocstatusBloc
    extends Bloc<ActiveblocstatusEvent, ActiveblocstatusState> {
  final ActiveStatusService _activestatusservice;
  ActiveblocstatusBloc(this._activestatusservice)
      : super(ActiveblocstatusState.initial()) {
    //List
    on<Inizialize>((event, emit) async {
      if (state.activestatuslist.isNotEmpty) {
        emit(ActiveblocstatusState(
          activestatuslist: state.activestatuslist,
          searchReslut: [],
          isLoading: false,
          isError: false,
        ));
        return;
      }
      emit(const ActiveblocstatusState(
        activestatuslist: [],
        searchReslut: [],
        isLoading: true,
        isError: false,
      ));
      final _result = await _activestatusservice.getActiveStatus();
      final _state = _result.fold((MainFailure r) {
        return const ActiveblocstatusState(
          activestatuslist: [],
          searchReslut: [],
          isLoading: false,
          isError: true,
        );
      }, (List<ActiveDatum> list) {
        return ActiveblocstatusState(
          activestatuslist: list,
          searchReslut: [],
          isLoading: false,
          isError: false,
        );
      });
      emit(_state);
    });

    on<SearchStatus>((event, emit) async {
      //call search api
      emit(const ActiveblocstatusState(
          activestatuslist: [],
          searchReslut: [],
          isLoading: true,
          isError: false));
      final _result = await _activestatusservice.searchStatus(
          searchQuery: event.searchQuery);
      final _state = _result.fold((MainFailure f) {
        return const ActiveblocstatusState(
            activestatuslist: [],
            searchReslut: [],
            isLoading: false,
            isError: true);
      }, (ActiveModel r) {
        return ActiveblocstatusState(
            activestatuslist: r.data!,
            searchReslut: [],
            isLoading: false,
            isError: false);
      });
      emit(_state);
    });
  }
}
