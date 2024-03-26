import '../../../core/core.dart';

class CountryFlagWidget extends StatelessWidget {
  const CountryFlagWidget({super.key, required this.imageUrl, this.size = 50});

  final String imageUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        alignment: Alignment.center,
        height: size,
        width: size,
        child: SvgPicture.network(
          imageUrl,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
