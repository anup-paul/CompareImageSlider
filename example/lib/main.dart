import 'package:compare_image_slider/compare_image_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Compare Image Slider"),),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 400,
                  child: CompareImageSlider(
                    beforeImage: AssetImage('assets/images/image1.png'),
                    afterImage: AssetImage('assets/images/image2.png'),
                    initialPosition: 0.5, // Start in the middle
                    sliderColor: Colors.white,
                    sliderThickness: 2.0,
                  ),
              ),

              SizedBox(height: 50,),

              SizedBox(
                height: 400,
                child: CompareImageSlider(
                  beforeImage: AssetImage('assets/images/image3.png'),
                  afterImage: AssetImage('assets/images/image4.png'),
                  initialPosition: 0.5, // Start in the middle
                  sliderColor: Colors.black,
                  sliderThickness: 2.0,
                ),
              ),

              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}

