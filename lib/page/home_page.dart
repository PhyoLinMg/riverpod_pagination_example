import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:riverpod_example/model/passenger.dart';
import 'package:riverpod_example/pagination_state.dart';
import 'package:riverpod_example/provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final PagingController<int, Passenger> _pagingController =
      PagingController(firstPageKey: 0);
  late StreamSubscription _subscription;

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      ref.read(repositoryProvider).add(pageKey);
      print("the page is $pageKey");
    });

    _subscription = ref.read(repositoryProvider).getStream().listen((state) {
      _pagingController.value = PagingState(
        error: state.error,
        nextPageKey: state.nextPageKey,
        itemList: state.itemList,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, Passenger>(
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate<Passenger>(
        itemBuilder: (context, item, index) {
          return ListTile(
            title: Text(item.name),
            onTap: () {
              print(index);
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    _pagingController.dispose();
    ref.read(repositoryProvider).dispose();
    super.dispose();
  }
}
