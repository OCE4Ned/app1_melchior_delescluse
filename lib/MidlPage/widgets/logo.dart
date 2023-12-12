import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  ui.Image? image;

  @override
  void initState() {
    super.initState();
    rootBundle.load('assets/logo_bg.png').then((data) {
      decodeImageFromList(Uint8List.view(data.buffer)).then((decodedImage) {
        setState(() {
          image = decodedImage;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return image != null
        ? ShaderMask(
      shaderCallback: (bounds) {
        final double widthFactor = bounds.width / image!.width;
        final double heightFactor = bounds.height / image!.height;
        final Matrix4 matrix = Matrix4.identity()
          ..scale(widthFactor, heightFactor, 1.0);
        return ui.ImageShader(
          image!,
          TileMode.clamp,
          TileMode.clamp,
          matrix.storage,
        );
      },
      child: const Text(
        'Midl',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    )
        : Container();
  }
}