import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_example/api.dart';
import 'package:riverpod_example/model/passenger.dart';
import 'package:riverpod_example/provider.dart';
import 'package:riverpod_example/repository.dart';
import 'package:rxdart/rxdart.dart';

part 'pagination_notifier.freezed.dart';

@freezed
class PaginationState with _$PaginationState {
  const PaginationState._();
  const factory PaginationState({
    @Default(null) final List<Passenger>? itemList,
    @Default(null) final dynamic error,
    @Default(0) final int? nextPageKey,
  }) = _PaginationState;
}

class PaginationNotifier extends StateNotifier<PaginationState> {
  final Repository repository;

  PaginationNotifier(this.repository) : super(PaginationState());
  final _subscriptions = CompositeSubscription();
  getStream() {
    repository.onPageRequest.stream
        .flatMap(repository.fetchList)
        .listen(repository.onNewsListController.add)
        .addTo(_subscriptions);
    return repository.onNewsListState;
  }

  add(int page) {
    repository.add(page);
  }

  void disposal() {
    repository.dispose();
    _subscriptions.dispose();
  }
}
