import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_example/model/passenger.dart';

part 'pagination_state.freezed.dart';

@freezed
class PaginationState with _$PaginationState {
  const PaginationState._();
  const factory PaginationState({
    @Default(null) final List<Passenger>? itemList,
    @Default(null) final dynamic error,
    @Default(0) final int? nextPageKey,
  }) = _PaginationState;
}
