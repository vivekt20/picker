import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget{
  @override
  _MyCustomFormState createState()=>_MyCustomFormState();

}
class _MyCustomFormState extends State<MyCustomForm>{
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(16.0),
      child: Form(key: _formKey,child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "Enter your name",border: OutlineInputBorder()
            ),
            validator: (value){
              if(value == null || value.isEmpty){
                return "Please enter some text";
              }
              return null;
            },
          ),
          SizedBox(height: 25),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Enter your email",border: OutlineInputBorder()
            ),
            keyboardType: TextInputType.emailAddress,
            validator: (value){
              if(value == null || RegExp(r'\s+@\s+\.\s+').hasMatch(value)){
                return "Please enter a valid email";
              }
              return null;
            },
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 16.0),
          child: ElevatedButton(onPressed: (){
            if(_formKey.currentState!.validate()){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Processing data")),);
            }
          }, 
          child: Text("Submit")),
          )
        ],
      )),
      ),
      
    );
  }
  
}