import '../../../core/core.dart';

class CountryListScreen extends ConsumerStatefulWidget {
  const CountryListScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CountryListScreenState();
}

class _CountryListScreenState extends ConsumerState<CountryListScreen> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
