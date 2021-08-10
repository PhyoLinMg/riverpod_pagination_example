import 'dart:async';

import 'package:riverpod_example/api.dart';
import 'package:riverpod_example/pagination_state.dart';
import 'package:rxdart/rxdart.dart';

class Repository {
  Repository();
  final onNewsListController = BehaviorSubject<PaginationState>.seeded(
    PaginationState(),
  );

  Stream<PaginationState> get onNewsListState => onNewsListController.stream;

  final onPageRequest = StreamController<int>();
  final _subscriptions = CompositeSubscription();

  add(int pagekey) {
    onPageRequest.sink.add(pagekey);
  }

  getStream() {
    onPageRequest.stream
        .flatMap(_fetchList)
        .listen(onNewsListController.add)
        .addTo(_subscriptions);
    return onNewsListState;
  }

  Stream<PaginationState> _fetchList(int pageKey) async* {
    final lastState = onNewsListController.value;
    try {
      final response = await Api().getPassengers(pageKey);
      final isLastPage = pageKey == response.totalPages;
      final nextPageKey = isLastPage ? 0 : pageKey + 1;
      yield PaginationState(
        error: null,
        nextPageKey: nextPageKey,
        itemList: [...lastState.itemList ?? [], ...response.passengers],
      );
    } catch (e) {
      yield PaginationState(
        error: e,
        nextPageKey: lastState.nextPageKey,
        itemList: lastState.itemList,
      );
    }
  }

  void dispose() {
    onPageRequest.close();
    _subscriptions.dispose();
    onNewsListController.close();
  }
}
