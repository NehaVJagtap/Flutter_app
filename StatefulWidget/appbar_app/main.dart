import "package:flutter/material.dart";
void main(){
  runApp(myapp){

  }
}
class myapp extends  StatefulWidget{
  myapp({super.key}),
  @override
  State createState(){
    // ignore: no_logic_in_create_state
    return _myappState ;

  }
  
}

class _myappState extends State{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:const  Text("Appbar Color"),
          centerTitle: true,
          backgroundColor:Colors.amber,
        ),
        body: const  Center(
          child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text("Change Appbar color"),
          ],
        
        ),
      ),
    
    )
    floatingActionButton:FloatingActionButton(
      onPressed:(){
        if
        (changecolor==false){
          changecolor=true;
        }
        else{}
      } 
    ,)
    );
    


  }
  {

  }
  }

