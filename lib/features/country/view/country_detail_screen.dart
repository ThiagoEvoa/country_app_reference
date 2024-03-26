import '../../../core/core.dart';
import '../../features.dart';
import 'country_flag_widget.dart';

class CountryDetailScreen extends StatelessWidget {
  const CountryDetailScreen({super.key, required this.country});

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(country.name),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
        children: [
          Center(
            child: CountryFlagWidget(
              imageUrl: country.imageUrl,
              size: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                country.description,
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
