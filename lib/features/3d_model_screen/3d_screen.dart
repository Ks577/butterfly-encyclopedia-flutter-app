import 'package:flutter/material.dart';
import 'package:lepidopterology_app/core/responsive/app_size.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Butterfly3DScreen extends StatelessWidget {
  final String modelUrl;

  const Butterfly3DScreen({super.key, required this.modelUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3D Модель'),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Padding(
          padding: AppSizes.modelPadding(context),
          child: SizedBox(
            height: AppSizes.modelHeight(context),
            width: AppSizes.modelWidth(context),
            child: ModelViewer(
              src: modelUrl,
              alt: "3D Butterfly",
              autoRotate: true,
              cameraControls: true,
              backgroundColor: Colors.transparent,
              cameraOrbit: "0deg 75deg 120%",
              minCameraOrbit: "auto auto 60%",
              maxCameraOrbit: "auto auto 200%",
              fieldOfView: "35deg",
            ),
          ),
        ),
      ),
    );
  }
}
