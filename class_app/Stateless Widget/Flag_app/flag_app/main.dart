import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});
  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: const Text("Indian Flag"),
          centerTitle:true,
          backgroundColor: Colors.blue,
          
          
        ),
        body:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [

           
            Column(
              children: [
              
              const SizedBox(
                height: 50,
                ),
               Container(
                height: 480,
                width: 10,
                color: Colors.brown,
                
                 ),/*
                 Container(
                  height: 35,
                  width: 60,
                  color: Colors.brown,
                 ),
                 Container(
                  height: 35,
                  width:80,
                  color: Colors.brown,
                 ),
                 Container(
                  height: 35,
                  width: 100,
                  color: Colors.brown,
                 ),
            */


            ]
            ),
            
            
              
            
            
            
            
          


            Column(
            children: [
             const  SizedBox(
                height: 55,
                width: 1,
              ),
              Container(
                width: 230,
                height: 35,
                color:Colors.orange,
              ),
            
              Container(
                width:230,
                height: 35,
                color: Colors.white,
               child: Image.network("https://static.vecteezy.com/system/resources/previews/019/136/455/original/ashok-chakra-logo-ashok-chakra-free-free-vector.jpg"),
              ),
             
               
              Container(
                width:230,
                height:35,
                color: Colors.green,
              ),
              
              
              
            ],
            ),
            
            ],
          ),
          
            
          
        ) ,
        

        ));
      
    

  }
}

