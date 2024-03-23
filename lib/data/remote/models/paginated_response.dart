import 'package:json_annotation/json_annotation.dart';

part 'paginated_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, createToJson: false)
class PaginatedResponse<T> {
  @JsonKey(name: 'incomplete_results')
  final bool incompleteResults;
  @JsonKey(name: 'items')
  final List<T> items;
  @JsonKey(name: 'total_count')
  final int totalCount;

  PaginatedResponse({
    required this.incompleteResults,
    required this.items,
    required this.totalCount,
  });

  factory PaginatedResponse.fromJson(Map<String, dynamic> json, T Function(Object?) dataFromJson) =>
      _$PaginatedResponseFromJson(json, dataFromJson);
}
