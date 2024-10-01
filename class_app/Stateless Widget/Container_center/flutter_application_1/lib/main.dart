import "package:flutter/material.dart";
void main(){
  runApp(const myApp());
}
// ignore: camel_case_types
class myApp extends StatelessWidget {
   const myApp({super.key});
   @override
   Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: const Text("Flutter"),
          centerTitle:true,
          backgroundColor:Colors.amber
        ),
        body: Center(
          child:Container(
            height: 125,
            width: 150,
            color: Colors.blue,),
          
          
        ),
      )
      );
      
    
   }
}