
import 'package:flutter/material.dart';

InputDecoration filledDecoration(text){ 
return  InputDecoration(
  border: OutlineInputBorder(),
  label: Text("$text"),
  fillColor: Colors.amber,
  filled: true,
 );
}

ButtonStyle elevatedButtonStyle(){
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    iconColor: Colors.black,
    minimumSize: Size(30,70),
    shape: CircleBorder(),
  );
}