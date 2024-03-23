import 'package:flutter/material.dart';
import 'package:riverpod_pagination_example/utils/debouncer.dart';

class StyledSearchBar extends StatelessWidget {
  final int? debounceDuration;
  final String? hint;
  final Function(String) onSearch;
  late final Debouncer _debouncer;

  StyledSearchBar({
    super.key,
    this.debounceDuration,
    this.hint = "Search",
    required this.onSearch,
  }) {
    if (debounceDuration != null) {
      _debouncer = Debouncer(milliseconds: debounceDuration!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (val) {
        debounceDuration == null
            ? onSearch(val)
            : _debouncer.run(() {
                onSearch(val);
              });
      },
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: const Icon(Icons.search),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
