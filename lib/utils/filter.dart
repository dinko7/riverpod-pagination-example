import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_pagination_example/utils/pagination_controller.dart';

abstract class PaginationFilter<F> {
  late F currentFilter;

  Future<void> applyFilter(F filter);
}

mixin AsyncPaginationFilter<F, T, I> on AsyncPaginationController<T, I> implements PaginationFilter<F> {
  @override
  Future<void> applyFilter(F filter) async {
    currentPage = initialPage;
    currentFilter = filter;

    state = AsyncLoading<List<T>>();

    final newState = await AsyncValue.guard<List<T>>(() async {
      return await loadPage(currentPage);
    });
    state = newState;
  }
}
