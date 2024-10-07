import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget{
  const SwitchDemo ({super.key});
  @override
  _SwitchDemoState createState()=> _SwitchDemoState();

}
class _SwitchDemoState extends State<SwitchDemo>{
  bool _Switchvalue =false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_Switchvalue? "Switch is ON" : "Switch is OFF",
            style: const TextStyle(fontSize: 18),),
            const SizedBox(height: 20),
            Switch(value: _Switchvalue,
             onChanged: (bool newValue){
              setState(() {
                _Switchvalue=newValue;
              });
             }),
          ],
        ),
      ),
    );
  }
}
