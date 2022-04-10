import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  
  bool _loading = true;
  late File _image;
  late List _output;
  final picker = ImagePicker(); //allows us to pick image from gallery or camera

  @override
  void initState() {
    //initS is the first function that is executed by default when this class is called
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    //dis function disposes and clears our memory
    super.dispose();
    Tflite.close();
  }

  classifyImage(File image) async {
    //this function runs the model on the image
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 7, //the amout of categories our neural network can predict
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _output = output!;
      _loading = false;
    });
  }

  loadModel() async {
    //this function loads our model
    await Tflite.loadModel(
        model: 'assets/model.tflite', labels: 'assets/labels.txt');
  }

  pickImage() async {
    //this function to grab the image from camera
    // ignore: deprecated_member_use, invalid_use_of_visible_for_testing_member
    var image = await ImagePicker.platform.getImage(
      source: ImageSource.camera,
      maxWidth: 224,
      maxHeight: 224,
      imageQuality: 72,
      preferredCameraDevice: CameraDevice.rear,
    );

    setState(() {
      _image = File(image!.path);
    });
    classifyImage(_image);
  }

  pickGalleryImage() async {
    //this function to grab the image from gallery
    // ignore: deprecated_member_use, invalid_use_of_visible_for_testing_member
    final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery,
                                  maxWidth: 224,
                                  maxHeight: 224,
                                  imageQuality: 72,
    );
    

    setState(() {
      _image = File(image!.path);
    });
    classifyImage(_image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            colors: ([Color.fromARGB(255, 170, 212, 255), Color.fromARGB(255, 212, 170, 255)])
        )
      ),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(1, 1), // changes position of shadow
              ),
            ],
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: _loading == true
                    ? null //show nothing if no picture selected
                    : Column(
                      children: [
                        SizedBox(
                          height: 250,
                          width: 250,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.file(
                              _image,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const Divider(
                          height: 25,
                          thickness: 1,
                        ),
                        // ignore: unnecessary_null_comparison
                        _output != null
                            ? Text(
                                'Diagnosis: ${_output[0]['label']}!\n'
                                'Confidence Level: ${(_output[0]['confidence']*100).round()}%',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )
                            : Container(),
                        const Divider(
                          height: 25,
                          thickness: 1,
                        ),
                      ],
                    ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: pickImage,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 200,
                      alignment: Alignment.center,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 24, vertical: 17),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 138, 171, 205),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Text(
                        'Take A Photo',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: pickGalleryImage,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 200,
                      alignment: Alignment.center,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 24, vertical: 17),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 138, 171, 205),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Text(
                        'Pick From Gallery',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
