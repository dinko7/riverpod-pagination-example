import 'package:json_annotation/json_annotation.dart';

part 'owner_get.g.dart';

@JsonSerializable()
class OwnerGet {
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  @JsonKey(name: 'events_url')
  final String eventsUrl;

  @JsonKey(name: 'followers_url')
  final String followersUrl;

  @JsonKey(name: 'following_url')
  final String followingUrl;

  @JsonKey(name: 'gists_url')
  final String gistsUrl;

  @JsonKey(name: 'gravatar_id')
  final String gravatarId;

  @JsonKey(name: 'html_url')
  final String htmlUrl;

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'login')
  final String login;

  @JsonKey(name: 'node_id')
  final String nodeId;

  @JsonKey(name: 'organizations_url')
  final String organizationsUrl;

  @JsonKey(name: 'received_events_url')
  final String receivedEventsUrl;

  @JsonKey(name: 'repos_url')
  final String reposUrl;

  @JsonKey(name: 'site_admin')
  final bool siteAdmin;

  @JsonKey(name: 'starred_url')
  final String starredUrl;

  @JsonKey(name: 'subscriptions_url')
  final String subscriptionsUrl;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'url')
  final String url;

  OwnerGet({
    required this.avatarUrl,
    required this.eventsUrl,
    required this.followersUrl,
    required this.followingUrl,
    required this.gistsUrl,
    required this.gravatarId,
    required this.htmlUrl,
    required this.id,
    required this.login,
    required this.nodeId,
    required this.organizationsUrl,
    required this.receivedEventsUrl,
    required this.reposUrl,
    required this.siteAdmin,
    required this.starredUrl,
    required this.subscriptionsUrl,
    required this.type,
    required this.url,
  });

  factory OwnerGet.fromJson(Map<String, dynamic> json) => _$OwnerGetFromJson(json);
}
