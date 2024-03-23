import 'package:json_annotation/json_annotation.dart';
import 'package:riverpod_pagination_example/data/remote/models/owner_get.dart';

part 'repository_get.g.dart';

@JsonSerializable()
class RepositoryGet {
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'forks_count')
  final int forksCount;
  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'owner')
  final OwnerGet owner;
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @JsonKey(name: 'watchers_count')
  final int watchersCount;
  @JsonKey(name: 'html_url')
  final String htmlUrl;

  const RepositoryGet({
    required this.description,
    required this.forksCount,
    required this.fullName,
    required this.id,
    required this.name,
    required this.owner,
    required this.stargazersCount,
    required this.watchersCount,
    required this.htmlUrl,
  });

  factory RepositoryGet.fromJson(Map<String, dynamic> json) => _$RepositoryGetFromJson(json);
}
