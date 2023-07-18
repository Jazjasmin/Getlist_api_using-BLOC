part of 'activeblocstatus_bloc.dart';

@freezed
class ActiveblocstatusEvent with _$ActiveblocstatusEvent {
  const factory ActiveblocstatusEvent.initialize() = Inizialize;
  const factory ActiveblocstatusEvent.searchStatus({
    required String searchQuery,
  }) = SearchStatus;
}
