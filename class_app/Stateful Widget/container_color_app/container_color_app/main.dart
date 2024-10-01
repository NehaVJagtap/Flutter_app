import "package:flutter/material.dart";
void main(){
  runApp(const Containerapp());
}

class Containerapp extends StatefulWidget{
  const Containerapp({super.key});

  
@override
State createState(){
  return _ContainerappState();
}

}
class _ContainerappState extends State{
  bool colorchange=true;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text("ContainerApp"),
          centerTitle: true,
          backgroundColor: (colorchange)? Colors.amber :Colors.blue,
        ),
        body: Center(child: 
        Container(
          width:250,
          height:250,
          color:(colorchange? Colors.pink:Colors.black),
          
        ),),
        floatingActionButton: FloatingActionButton(onPressed: 
        (){
          if(colorchange){
            colorchange=false;

          }else{
            colorchange=true;
          
          }
          setState(() {

          });

        },
        child: const Icon(Icons.add),
        ),
      )

    );
  }
}