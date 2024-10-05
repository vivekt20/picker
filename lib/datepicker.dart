import 'package:flutter/material.dart';

class DatePickerDemo extends StatefulWidget{
  const DatePickerDemo({super.key});
  @override
  _DatePickerDemoState createState()=> _DatePickerDemoState();
}
class _DatePickerDemoState extends State<DatePickerDemo>{
  DateTime? selectedDate;
  Future<void>_selectDate(BuildContext context)async{
    final DateTime? picked=await showDatePicker(context: context, firstDate: DateTime(2000), lastDate: DateTime(2101),);
    if(picked !=null && picked !=selectedDate){
      setState(() {
        selectedDate=picked;
      });
    }

  }
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              selectedDate !=null? 'selected Date:${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
              : 'No Date Selected!',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: ()=>_selectDate(context), child: const Text("Select Date"))
          ],
        ),
      ),
    );
  }
}