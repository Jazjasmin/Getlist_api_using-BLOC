part of 'activeblocstatus_bloc.dart';

@freezed
class ActiveblocstatusState with _$ActiveblocstatusState {
  const factory ActiveblocstatusState({
    required List<ActiveDatum> activestatuslist,
    required List<ActiveDatum> searchReslut,
    required bool isLoading,
    required bool isError,
  }) = _ActiveblocstatusState;

  factory ActiveblocstatusState.initial() => ActiveblocstatusState(
        activestatuslist: [],
        searchReslut: [],
        isLoading: false,
        isError: false,
      );
}
