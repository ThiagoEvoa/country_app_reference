import '../../../core/core.dart';
import '../../features.dart';

part 'country_view_model.g.dart';

@riverpod
class CountryViewModel extends _$CountryViewModel {
  @override
  AsyncValue<dynamic> build() => const AsyncValue.data([]);

  Future<void> retrieveCountries() async {
    try {
      final repository = ref.read(countryRepositoryImplProvider);
      state = const AsyncLoading();
      final response = await repository.retrieveCountries();
      final countries = Country.convertToList(response);
      state = AsyncValue.data(countries);
    } catch (exception, stackTrace) {
      state = AsyncValue.error(exception, stackTrace);
    }
  }
}
