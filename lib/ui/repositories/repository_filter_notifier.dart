import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_pagination_example/domain/repository_filter.dart';

final repositoryFilterNotifierProvider =
    NotifierProvider<RepositoryFilterNotifier, RepositoryFilter>(() => RepositoryFilterNotifier());

class RepositoryFilterNotifier extends Notifier<RepositoryFilter> {
  @override
  RepositoryFilter build() => const RepositoryFilter();

  void updateQuery(String query) {
    state = state.copyWith(query: query);
  }

  void update(RepositoryFilter filter) {
    state = filter;
  }
}
