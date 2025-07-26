import 'package:flutter/material.dart';
import 'package:practics_flutter_basic/style.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget
{
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomepageState();
  }
  
}
class HomepageState extends State<MyHomePage>
{
  double result=0;
  Map<String,double> keyvalue={"1stNum":0,"2nd Number":0};

  myInputchange(inputKey,inputValue){
    setState(() {
      keyvalue.update(inputKey, (value)=>double.parse(inputValue));
    });
  }

  addNumbers(){
    setState(() {
      result = keyvalue["1stNum"]! + keyvalue["2nd Number"]! ;
    });
  }

  subtractNumbers(){
    setState(() {
      result = keyvalue["1stNum"]! - keyvalue["2nd Number"]! ;
    });
  }

  multyNumbers(){
    setState(() {
      result = keyvalue["1stNum"]! * keyvalue["2nd Number"]! ;
    });
  }

  devidedNumbers(){
    setState(() {
      result = keyvalue["1stNum"]! / keyvalue["2nd Number"]! ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CounterApp"),
        centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                decoration: filledDecoration("1st Number"),
                onChanged: (value){
                  myInputchange("1stNum",value);
                },
              ),
              SizedBox(height: 15,),
              TextField(
                decoration: filledDecoration("2nd Number"),
                onChanged: (value){
                   myInputchange("2nd Number",value);
                },
              ),
              SizedBox(height: 15,),
                SizedBox(height: 25,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed:(){
                     addNumbers();
                  } ,
                  style:elevatedButtonStyle(),
                   child:Icon(Icons.add)
                   ),
                  ElevatedButton(onPressed:(){
                     subtractNumbers();
                  } ,
                  style:elevatedButtonStyle(),
                   child:Icon(Icons.remove)
                   ),

                  ElevatedButton(onPressed:(){
                     multyNumbers();
                  } ,
                  style:elevatedButtonStyle(),
                   child:Icon(Icons.clear)
                   ),

                   ElevatedButton(onPressed:(){
                     devidedNumbers();
                  } ,
                  style:elevatedButtonStyle(),
                   child:Text("/",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 25
                   ),)
                   ),
                ],
              ),
              SizedBox(height: 25,),
                   Text("Result = ${result.toStringAsFixed(2)}",style:TextStyle(fontSize: 38),),
            ],
          ),
        ),
    );
  }
  
}