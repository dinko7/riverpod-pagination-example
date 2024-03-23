import 'package:json_annotation/json_annotation.dart';
import 'package:riverpod_pagination_example/data/remote/models/owner_get.dart';

part 'repository_get.g.dart';

@JsonSerializable()
class RepositoryGet {
  @JsonKey(name: 'archive_url')
  final String archiveUrl;
  @JsonKey(name: 'archived')
  final bool archived;
  @JsonKey(name: 'assignees_url')
  final String assigneesUrl;
  @JsonKey(name: 'blobs_url')
  final String blobsUrl;
  @JsonKey(name: 'branches_url')
  final String branchesUrl;
  @JsonKey(name: 'clone_url')
  final String cloneUrl;
  @JsonKey(name: 'collaborators_url')
  final String collaboratorsUrl;
  @JsonKey(name: 'comments_url')
  final String commentsUrl;
  @JsonKey(name: 'commits_url')
  final String commitsUrl;
  @JsonKey(name: 'compare_url')
  final String compareUrl;
  @JsonKey(name: 'contents_url')
  final String contentsUrl;
  @JsonKey(name: 'contributors_url')
  final String contributorsUrl;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'default_branch')
  final String defaultBranch;
  @JsonKey(name: 'deployments_url')
  final String deploymentsUrl;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'disabled')
  final bool disabled;
  @JsonKey(name: 'downloads_url')
  final String downloadsUrl;
  @JsonKey(name: 'events_url')
  final String eventsUrl;
  @JsonKey(name: 'fork')
  final bool fork;
  @JsonKey(name: 'forks')
  final int forks;
  @JsonKey(name: 'forks_count')
  final int forksCount;
  @JsonKey(name: 'forks_url')
  final String forksUrl;
  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'git_commits_url')
  final String gitCommitsUrl;
  @JsonKey(name: 'git_refs_url')
  final String gitRefsUrl;
  @JsonKey(name: 'git_tags_url')
  final String gitTagsUrl;
  @JsonKey(name: 'git_url')
  final String gitUrl;
  @JsonKey(name: 'has_downloads')
  final bool hasDownloads;
  @JsonKey(name: 'has_issues')
  final bool hasIssues;
  @JsonKey(name: 'has_pages')
  final bool hasPages;
  @JsonKey(name: 'has_projects')
  final bool hasProjects;
  @JsonKey(name: 'has_wiki')
  final bool hasWiki;
  @JsonKey(name: 'homepage')
  final Object homepage;
  @JsonKey(name: 'hooks_url')
  final String hooksUrl;
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'issue_comment_url')
  final String issueCommentUrl;
  @JsonKey(name: 'issue_events_url')
  final String issueEventsUrl;
  @JsonKey(name: 'issues_url')
  final String issuesUrl;
  @JsonKey(name: 'keys_url')
  final String keysUrl;
  @JsonKey(name: 'labels_url')
  final String labelsUrl;
  @JsonKey(name: 'language')
  final String language;
  @JsonKey(name: 'languages_url')
  final String languagesUrl;
  @JsonKey(name: 'license')
  final Object license;
  @JsonKey(name: 'merges_url')
  final String mergesUrl;
  @JsonKey(name: 'milestones_url')
  final String milestonesUrl;
  @JsonKey(name: 'mirror_url')
  final Object mirrorUrl;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'node_id')
  final String nodeId;
  @JsonKey(name: 'notifications_url')
  final String notificationsUrl;
  @JsonKey(name: 'open_issues')
  final int openIssues;
  @JsonKey(name: 'open_issues_count')
  final int openIssuesCount;
  @JsonKey(name: 'owner')
  final OwnerGet owner;
  @JsonKey(name: 'private')
  final bool private;
  @JsonKey(name: 'pulls_url')
  final String pullsUrl;
  @JsonKey(name: 'pushed_at')
  final String pushedAt;
  @JsonKey(name: 'releases_url')
  final String releasesUrl;
  @JsonKey(name: 'score')
  final double score;
  @JsonKey(name: 'size')
  final int size;
  @JsonKey(name: 'ssh_url')
  final String sshUrl;
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @JsonKey(name: 'stargazers_url')
  final String stargazersUrl;
  @JsonKey(name: 'statuses_url')
  final String statusesUrl;
  @JsonKey(name: 'subscribers_url')
  final String subscribersUrl;
  @JsonKey(name: 'subscription_url')
  final String subscriptionUrl;
  @JsonKey(name: 'svn_url')
  final String svnUrl;
  @JsonKey(name: 'tags_url')
  final String tagsUrl;
  @JsonKey(name: 'teams_url')
  final String teamsUrl;
  @JsonKey(name: 'trees_url')
  final String treesUrl;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'watchers')
  final int watchers;
  @JsonKey(name: 'watchers_count')
  final int watchersCount;

  RepositoryGet({
    required this.archiveUrl,
    required this.archived,
    required this.assigneesUrl,
    required this.blobsUrl,
    required this.branchesUrl,
    required this.cloneUrl,
    required this.collaboratorsUrl,
    required this.commentsUrl,
    required this.commitsUrl,
    required this.compareUrl,
    required this.contentsUrl,
    required this.contributorsUrl,
    required this.createdAt,
    required this.defaultBranch,
    required this.deploymentsUrl,
    required this.description,
    required this.disabled,
    required this.downloadsUrl,
    required this.eventsUrl,
    required this.fork,
    required this.forks,
    required this.forksCount,
    required this.forksUrl,
    required this.fullName,
    required this.gitCommitsUrl,
    required this.gitRefsUrl,
    required this.gitTagsUrl,
    required this.gitUrl,
    required this.hasDownloads,
    required this.hasIssues,
    required this.hasPages,
    required this.hasProjects,
    required this.hasWiki,
    required this.homepage,
    required this.hooksUrl,
    required this.htmlUrl,
    required this.id,
    required this.issueCommentUrl,
    required this.issueEventsUrl,
    required this.issuesUrl,
    required this.keysUrl,
    required this.labelsUrl,
    required this.language,
    required this.languagesUrl,
    required this.license,
    required this.mergesUrl,
    required this.milestonesUrl,
    required this.mirrorUrl,
    required this.name,
    required this.nodeId,
    required this.notificationsUrl,
    required this.openIssues,
    required this.openIssuesCount,
    required this.owner,
    required this.private,
    required this.pullsUrl,
    required this.pushedAt,
    required this.releasesUrl,
    required this.score,
    required this.size,
    required this.sshUrl,
    required this.stargazersCount,
    required this.stargazersUrl,
    required this.statusesUrl,
    required this.subscribersUrl,
    required this.subscriptionUrl,
    required this.svnUrl,
    required this.tagsUrl,
    required this.teamsUrl,
    required this.treesUrl,
    required this.updatedAt,
    required this.url,
    required this.watchers,
    required this.watchersCount,
  });

  factory RepositoryGet.fromJson(Map<String, dynamic> json) => _$RepositoryGetFromJson(json);
}
