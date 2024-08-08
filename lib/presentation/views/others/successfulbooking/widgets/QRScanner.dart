import 'package:flutter/material.dart';

class QRScanner extends StatelessWidget {
  const QRScanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset('assets/images/vaadin_qrcode.png',
          alignment: Alignment.center,)
    );
  }
}