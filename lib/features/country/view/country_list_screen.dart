import 'package:country_app_reference/features/features.dart';

import '../../../core/core.dart';
import 'list_country_widget.dart';

class CountryListScreen extends ConsumerStatefulWidget {
  const CountryListScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CountryListScreenState();
}

class _CountryListScreenState extends ConsumerState<CountryListScreen> {
  void _retrieveCountries() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(countryViewModelProvider.notifier).retrieveCountries();
    });
  }

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    _retrieveCountries();
  }

  @override
  Widget build(BuildContext context) {
    final countryViewModel = ref.watch(countryViewModelProvider);
    final appBarTitle = Translations.of(context).getTranslation('countries');

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: countryViewModel.when(
        data: (countries) => ListCountryWidget(countries: countries),
        error: (error, stacktrace) => ErrorWidget(error),
        loading: () => const Center(child: LoadingWidget()),
      ),
    );
  }
}
