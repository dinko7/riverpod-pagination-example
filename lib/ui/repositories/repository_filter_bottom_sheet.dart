import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_pagination_example/domain/repository_filter.dart';
import 'package:riverpod_pagination_example/ui/repositories/repository_filters_providers.dart';

class RepositoryFilterBottomSheet extends ConsumerWidget {
  final AlwaysAliveProviderBase<RepositoryFilter> filterProvider;
  final Function(RepositoryFilter) onFilterChanged;

  const RepositoryFilterBottomSheet({
    Key? key,
    required this.filterProvider,
    required this.onFilterChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(filterProvider);
    final sortOptions = ref.watch(sortOptionsProvider);
    final orderOptions = ref.watch(orderOptionsProvider);
    final programmingLanguages = ref.watch(programmingLanguagesProvider);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sort By:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                for (final sortOption in sortOptions)
                  ChoiceChip(
                    label: Text(sortOption.label),
                    selected: filter.sort?.value == sortOption.value,
                    onSelected: (selected) {
                      if (selected) {
                        onFilterChanged(filter.copyWith(sort: sortOption));
                      }
                    },
                  ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Order:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                for (final orderOption in orderOptions)
                  ChoiceChip(
                    label: Text(orderOption.label),
                    selected: filter.order?.value == orderOption.value,
                    onSelected: (selected) {
                      if (selected) {
                        onFilterChanged(filter.copyWith(order: orderOption));
                      }
                    },
                  ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Programming Languages:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final language in programmingLanguages)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: filter.languages.contains(language),
                        onChanged: (selected) {
                          final List<ProgrammingLanguage> newLanguages = List.from(filter.languages);
                          if (selected != null && selected) {
                            newLanguages.add(language);
                          } else {
                            newLanguages.remove(language);
                          }
                          onFilterChanged(filter.copyWith(languages: newLanguages));
                        },
                      ),
                      Text(language.label),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
