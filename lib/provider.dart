import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/pagination_notifier.dart';
import 'package:riverpod_example/repository.dart';

final repositoryProvider = Provider(
  (ref) => Repository(),
);

final pagintionNotifierProvider =
    StateNotifierProvider<PaginationNotifier, PaginationState>((ref) {
  return PaginationNotifier(ref.watch(repositoryProvider));
});
