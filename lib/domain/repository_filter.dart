import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_filter.freezed.dart';

@freezed
class RepositoryFilter with _$RepositoryFilter {
  const factory RepositoryFilter({
    String? query,
    @Default([]) List<ProgrammingLanguage> languages,
    SortOption? sort,
    OrderOption? order,
  }) = _RepositoryFilter;
}

sealed class SortOption {
  const SortOption(this.value, this.label);

  final String value;
  final String label;
}

class StarsSort extends SortOption {
  const StarsSort() : super('stars', 'Stars');
}

class ForksSort extends SortOption {
  const ForksSort() : super('forks', 'Forks');
}

class UpdatedSort extends SortOption {
  const UpdatedSort() : super('updated', 'Updated');
}

sealed class OrderOption {
  const OrderOption(this.value, this.label);

  final String value;
  final String label;
}

class AscOrder extends OrderOption {
  const AscOrder() : super('asc', 'Ascending');
}

class DescOrder extends OrderOption {
  const DescOrder() : super('desc', 'Descending');
}

sealed class ProgrammingLanguage {
  const ProgrammingLanguage(this.value, this.label);

  final String value;
  final String label;
}

class JavaLanguage extends ProgrammingLanguage {
  const JavaLanguage() : super('java', 'Java');
}

class PythonLanguage extends ProgrammingLanguage {
  const PythonLanguage() : super('python', 'Python');
}

class JavaScriptLanguage extends ProgrammingLanguage {
  const JavaScriptLanguage() : super('javascript', 'JavaScript');
}

class CppLanguage extends ProgrammingLanguage {
  const CppLanguage() : super('cpp', 'C++');
}

class CSharpLanguage extends ProgrammingLanguage {
  const CSharpLanguage() : super('csharp', 'C#');
}

class RubyLanguage extends ProgrammingLanguage {
  const RubyLanguage() : super('ruby', 'Ruby');
}

class SwiftLanguage extends ProgrammingLanguage {
  const SwiftLanguage() : super('swift', 'Swift');
}

class GoLanguage extends ProgrammingLanguage {
  const GoLanguage() : super('go', 'Go');
}

class PhpLanguage extends ProgrammingLanguage {
  const PhpLanguage() : super('php', 'PHP');
}

class TypeScriptLanguage extends ProgrammingLanguage {
  const TypeScriptLanguage() : super('typescript', 'TypeScript');
}
