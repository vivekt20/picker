import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget{
  @override
  _SliderDemoState createState()=>_SliderDemoState();
}
class _SliderDemoState extends State<SliderDemo>{
  double _slidervalue=20.0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("slider value:${_slidervalue.toStringAsFixed(1)}",
            style: const TextStyle(fontSize: 18),),
            const SizedBox(height: 20),
            Slider(value: _slidervalue,
            min: 0,
            max: 100,
             onChanged: (double newValue){
              setState(() {
                _slidervalue=newValue;
              });
            })
          ],
        ),
      ),
    );
  }
}