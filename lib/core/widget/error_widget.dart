import 'package:flutter/cupertino.dart';

class ErroWidget extends StatelessWidget {
  const ErroWidget({super.key, required this.error});

  final Exception error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error.toString(),
      ),
    );
  }
}
