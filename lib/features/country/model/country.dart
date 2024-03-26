import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/core.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  const factory Country({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'imageUrl') required String imageUrl,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  static List<dynamic> convertToList(Map<String, dynamic> json) {
    return (json['countries']).map((value) => Country.fromJson(value)).toList();
  }

  factory Country.initialState() => const Country(
        name: '',
        description: '',
        imageUrl: '',
      );
}
