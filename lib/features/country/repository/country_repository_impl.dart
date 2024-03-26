import '../../../core/core.dart';
import '../../features.dart';

part 'country_repository_impl.g.dart';

@riverpod
CountryRepositoryImpl countryRepositoryImpl(CountryRepositoryImplRef ref) =>
    CountryRepositoryImpl(ref.read(dioProvider));

@RestApi(baseUrl: '')
abstract class CountryRepositoryImpl implements CountryRepository {
  factory CountryRepositoryImpl(Dio dio) = _CountryRepositoryImpl;

  @override
  @GET('')
  Future<dynamic> retrieveCountries();
}
