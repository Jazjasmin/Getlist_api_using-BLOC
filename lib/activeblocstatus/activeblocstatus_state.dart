part of 'activeblocstatus_bloc.dart';

@freezed
class ActiveblocstatusState with _$ActiveblocstatusState{
  const factory ActiveblocstatusState({
    required List<Datum> activestatuslist,
    required bool isLoading,
    required bool isError,
  }) = _ActiveblocstatusState;

  factory ActiveblocstatusState.initial() =>  ActiveblocstatusState(
    activestatuslist: [], 
    isLoading: false, 
    isError: false,
    );
}