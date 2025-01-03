import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:pose_detection_app/pose_detector_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  runApp(PoseDetectionApp(cameras: cameras));
}

class PoseDetectionApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  PoseDetectionApp({required this.cameras});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PoseDetectorView(),
    );
  }
}


