import 'package:country_app_reference/features/country/view/country_flag_widget.dart';

import '../../../core/core.dart';

class ListCountryWidget extends StatelessWidget {
  const ListCountryWidget({super.key, required this.countries});

  final List<dynamic> countries;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: countries.length,
      itemBuilder: (context, index) {
        final country = countries[index];
        return Card(
          child: ListTile(
            title: Text(
              country.name,
            ),
            onTap: () {
              context.go('/detail', extra: country);
            },
            leading: CountryFlagWidget(
              imageUrl: country.imageUrl,
            ),
          ),
        );
      },
    );
  }
}
