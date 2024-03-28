import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_pagination_example/domain/repository_filter.dart';
import 'package:riverpod_pagination_example/ui/repositories/repository_filter_bottom_sheet.dart';
import 'package:riverpod_pagination_example/ui/widgets/filter_button.dart';
import 'package:riverpod_pagination_example/ui/widgets/search_bar.dart';

class SearchFilterRow extends ConsumerWidget {
  final Function(String) onSearch;
  final AlwaysAliveProviderBase<RepositoryFilter> filterProvider;
  final Function(RepositoryFilter) onFilterChanged;

  SearchFilterRow({
    required this.onSearch,
    required this.filterProvider,
    required this.onFilterChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: StyledSearchBar(onSearch: onSearch, debounceDuration: const Duration(milliseconds: 500))),
          const SizedBox(width: 8),
          FilterButton(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return RepositoryFilterBottomSheet(
                    filterProvider: filterProvider,
                    onFilterChanged: onFilterChanged,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
