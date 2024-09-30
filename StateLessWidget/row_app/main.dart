import 'package:flutter/material.dart';

void main(){
  runApp(myapp ());
}
class myapp extends StatelessWidget{
  myapp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home:Scaffold(
        
        appBar: AppBar(
          
          title:const  Text("Container"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Container(
                width: 130,
                height: 130,
                color: Colors.green,
                

                
              ),
              const SizedBox(
                width: 25,
              ),
              Container(
                width: 130,
                height: 130,
                color: Colors.amber,
              ),


             ],
          ),
        ),
      )
    );
  }
  
}