import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';

@freezed
class Repository with _$Repository {
  const factory Repository({
    required int id,
    required String name,
    required String fullName,
    required String htmlUrl,
    required String description,
    required int stargazersCount,
    required int forksCount,
    required int watchersCount,
    required String language,
    required String updatedAt,
  }) = _Repository;
}
