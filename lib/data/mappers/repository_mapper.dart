import 'package:riverpod_pagination_example/data/remote/models/repository_get.dart';
import 'package:riverpod_pagination_example/domain/repository.dart';

extension RepositoryMapper on RepositoryGet {
  Repository toDomain() => Repository(
        id: id,
        name: name,
        fullName: fullName,
        htmlUrl: htmlUrl,
        description: description ?? "",
        stargazersCount: stargazersCount,
        forksCount: forksCount,
        watchersCount: watchersCount,
        ownerImageUrl: owner.avatarUrl,
      );
}
