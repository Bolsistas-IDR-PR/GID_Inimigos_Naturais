import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_view/photo_view.dart';

class PhotoInseto extends StatefulWidget {
  const PhotoInseto({Key? key, required this.foto}) : super(key: key);
  final String foto;

  @override
  State<PhotoInseto> createState() => _PhotoInsetoState();
}

class _PhotoInsetoState extends State<PhotoInseto> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(45, 49, 52, 1),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(36, 172, 94, 1),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
      body: PhotoView(
        imageProvider: AssetImage(widget.foto),
        maxScale: PhotoViewComputedScale.covered * 2.0,
        minScale: PhotoViewComputedScale.contained,
        initialScale: PhotoViewComputedScale.contained,
      ),
    );
  }
}
