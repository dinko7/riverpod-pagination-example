import 'package:json_annotation/json_annotation.dart';

part 'paginated_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, createToJson: false)
class PaginatedResponse<T> {
  final bool incompleteResults;
  final List<T> items;
  final int totalCount;

  PaginatedResponse({
    required this.incompleteResults,
    required this.items,
    required this.totalCount,
  });

  factory PaginatedResponse.fromJson(Map<String, dynamic> json, T Function(Object?) dataFromJson) =>
      _$PaginatedResponseFromJson(json, dataFromJson);
}
