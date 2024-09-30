// ignore_for_file: camel_case_types

import "package:flutter/material.dart";

void main(){
  runApp( CounterApp());
}

    

  


class CounterApp extends StatefulWidget{
  const CounterApp({super.key});
  @override
  State<CounterApp> createState()
  => _CounterAppState();
}
  
  // ignore: non_constant_identifier_names
  class _CounterAppState extends State<CounterApp>{
    int count=0;
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
          title: const Text("count App"),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body:  Center(
          
          child:Text(
            ("$count"),
          ),

          
        ),
        
        
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            count++;
            setState((){});
          },
          backgroundColor: Colors.green,
          child:const 
          Icon(Icons.add),
        ),
        ));


    }
}
  
  
  
  
  
  
  


