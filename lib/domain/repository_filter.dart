import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_filter.freezed.dart';

@freezed
class RepositoryFilter with _$RepositoryFilter {
  const factory RepositoryFilter({
    String? query,
    @Default([]) List<String> languages,
    String? sort,
    String? order,
  }) = _RepositoryFilter;
}
