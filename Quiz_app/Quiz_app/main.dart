import "package:flutter/material.dart";
void main(){
  runApp( const Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quizapp(),
    );
    

  }
}
class Quizapp extends StatefulWidget{
  const Quizapp({super.key});
  
@override
  State createState() => _QuizAppState();
}
  class _QuizAppState extends State{
    
    
        List<Map> allQuestion =[{"Question":"Who is founder of Microsoft?",
                              "Option":["SteveJobs","Bill gates","Lary Page","Elon Mask",],
                              "correctAnswer": 1,
                              },
                              
                            {
                              "Question":"Who is founder of Google?",
                             "Option":["SteveJobs","Bill Gates","Lary Page","Elon Mask",],
                             "correctAnswer":2,
                             },
                             {
                             "Question":"Who is the founder of spaceX",
                              "Option":["SteveJobs","Bill gates","Lary Page","Elon Mask",],
                              "correctAnswer":3,
                              },
                              {
                              "Question":"Who is the founder of Apple",
                              "Option":["SteveJobs","Bill Gates","Lary Page","ElonMask",],
                              "correctAnswer":0,
                              },
                               {
                              "Question":"Who is the founder of Meta?",
                              "Option":["SteveJobs","Bill Gates","Mark Zukerberg","ElonMask",],
                              "correctAnswer":2,
                              },
                             ];
      int currentQuestionIndex=0;
      int selectedAnswerIndex=-1;
      int count=0;
      int count1=0;
    WidgetStateProperty<Color?> checkAnswer(int answerIndex){
      if(selectedAnswerIndex!=-1){
        if(answerIndex==allQuestion[currentQuestionIndex]["correctAnswer"]){
          count++;
          return const WidgetStatePropertyAll(Colors.green);
        }else if(selectedAnswerIndex==answerIndex){
          count1++;
          return const WidgetStatePropertyAll(Colors.red);
        }
        else{
          return const WidgetStatePropertyAll(null);
        }


        }else{
          return  const WidgetStatePropertyAll(null);
        }
      }
      bool questionPage=true;
      
    
    @override
    Widget build(BuildContext context){
      return isQuestionScreen();
    }
      Scaffold isQuestionScreen(){
        if(questionPage==true){
      
        return Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App",
          style:TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ) ,),
          centerTitle: true,
          backgroundColor: Colors.pink,
          
        ),
        body:
        
        Column(
          children: [
            const  SizedBox(
              height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const  SizedBox(
                    height: 130,
                  ),
                  Text(
                    "Question : ${currentQuestionIndex+1} /${allQuestion.length}"
                 ,
                 style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                 ), ),

                ],
              ),
              const SizedBox(
                height: 40,

              ),
              SizedBox(
                height: 30,
                width: 350,
                child: Text(
                allQuestion[currentQuestionIndex]["Question"],
                  style:  const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),),

              ),

              const SizedBox(
                height: 30,
              ),
               SizedBox(
                height: 45,
                width: 340,
                child:ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(0),
                  ) ,
                  onPressed:(){
                    if (selectedAnswerIndex==-1){
                      selectedAnswerIndex=0;
                      setState((){});
                    }
                  },
                  child:Text(
                    allQuestion[currentQuestionIndex]["Option"][0],
                    style:const  TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                 ),
               ),




              

              
          

        ),
        const SizedBox(
          height: 25,

        ),
        SizedBox(
          height: 45,
          width: 340,
          child: ElevatedButton(
            style:ButtonStyle(
              backgroundColor: checkAnswer(1),
            ),
            onPressed:(){
              if (selectedAnswerIndex==-1){
                selectedAnswerIndex=1;
                setState((){});
              }
            } ,
             child:Text(allQuestion[currentQuestionIndex]["Option"][1],
              style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
             ),)
              ),
        ),
         const SizedBox(
          height: 25,
         ),



         SizedBox(
          height: 45,
          width: 340,
          child: ElevatedButton(
            style:ButtonStyle(
              backgroundColor: checkAnswer(2),
            ),
            onPressed:(){
              if(selectedAnswerIndex==-1){
                selectedAnswerIndex=2;
                setState((){});
              }
            } ,
             child:Text(allQuestion[currentQuestionIndex]["Option"][2],
             style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
             ),)
              ),
        ),

         const SizedBox(
          height: 25,
         ),


         SizedBox(
          height: 45,
          width: 340,
          child: ElevatedButton(
            style:ButtonStyle(
              backgroundColor: checkAnswer(3),
            ),
            onPressed:(){
              if(selectedAnswerIndex==-1){
                selectedAnswerIndex=3;
                setState((){});
              }
            } ,
             child:Text(allQuestion[currentQuestionIndex]["Option"][3],
             style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
             ),)
              ),
        ),
        

        
        
          ],
      ),
      floatingActionButton:FloatingActionButton( 
        onPressed:(){
          if(selectedAnswerIndex !=-1){
            if(currentQuestionIndex<allQuestion.length-1){
              currentQuestionIndex++;

            }else{
              questionPage=false;
            }
            selectedAnswerIndex=-1;
            setState((){});
          }
        },

      
      backgroundColor: Colors.amber,
      child: const Icon(
        Icons.forward,
        color: Colors.black,
      )
      ),
      
        
      
        
         );
        }
      
    else{
      return Scaffold(
        appBar: AppBar(
          title:const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://img.freepik.com/free-vector/trophy-award-laurel-wreath-composition-with-realistic-image-golden-cup-decorated-with-garland-with-reflection_1284-32301.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1727568000&semt=ais_hybrid",
            
              height:300,),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Congratulations!!!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.black26,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
                Text("score:${count-count1}/${allQuestion.length}",
                style: const TextStyle(
                  fontSize: 35,
                ),
                ),
              
            ],
            
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            print("Onpressed reset");
            currentQuestionIndex=0;
            selectedAnswerIndex=-1;
            questionPage=true;
            count=0;
            count1=0;
            isQuestionScreen();
            setState(() {
              
            });
          },
            
          
          backgroundColor: Colors.amber,
           child: const  Text("Reset",
           style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w300,
            color: Colors.blue
          ),),
          
            
          ),
          

        );
        
      
  }
  }
  }
  


  