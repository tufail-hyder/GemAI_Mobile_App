import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? controller;
  List<CameraDescription>? cameras;
  final ImagePicker picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  Future<void> initializeCamera() async 
  {
    cameras = await availableCameras();
    if (cameras!.isNotEmpty) {
      controller = CameraController(cameras![0], ResolutionPreset.high);
      await controller!.initialize();
      if (!mounted) return;
      setState(() {});
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  // Pick image from gallery
  Future<void> pickFromGallery() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Selected: ${image.path}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (controller == null || !controller!.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      body: Stack(
        children: [
          CameraPreview(controller!),
          Positioned(
            bottom: 30,
            left: 40,
            child: FloatingActionButton(
              heroTag: 'gallery',
              backgroundColor: Colors.white70,
              onPressed: pickFromGallery,
              child: const Icon(Icons.photo, color: Colors.black),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 40,
            child: FloatingActionButton(
              heroTag: 'camera',
              backgroundColor: const Color(0xFF86520D),
              onPressed: () async {
                final XFile image = await controller!.takePicture();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Photo saved at ${image.path}')),
                );
              },
              child: const Icon(Icons.camera_alt, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
