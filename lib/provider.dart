import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/pagination_state.dart';
import 'package:riverpod_example/repository.dart';

final repositoryProvider = Provider(
  (ref) => Repository(),
);
