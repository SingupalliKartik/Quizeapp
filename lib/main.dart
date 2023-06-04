import 'package:flutter/material.dart';
import 'question.dart';
import 'quiz-brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:quizeapp/result.dart';
Brain questions = Brain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: quizpage(),
          ),
        ),
      ),
    );
  }
}

class quizpage extends StatefulWidget {

  @override
  State<quizpage> createState() => _quizpageState();
}

class _quizpageState extends State<quizpage> {


  List<Widget> score = [];


  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Image.asset('images/img.png'),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions.getText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink[300]),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                ),

                // backgroundColor: Colors.pink[300]
              ),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),

              onPressed: ()  {
                setState(() {

                  if (!questions.getans()) {
                    score.add(Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  } else {
                    questions.gg++;
                    score.add(
                      Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    );
                  }
                  if(
                  questions.full

                  ){
                    score = [ ];
                     Navigator.push(context,MaterialPageRoute(builder: (context) =>Result(result:questions.gg)));
                  }
                 questions.nextque();


                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                ),
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  if (questions.getans()) {
                    score.add(Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  } else {   questions.gg++;
                    score.add(

                      Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    );
                  }
                  if(
                  questions.full
                  ){
                    score = [ ];
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>Result(result: questions.gg,)));
                  }
                  questions.nextque();



                });
                //The user picked false.
              },
            ),
          ),
        ),
        Row(
          children: score,
        )
      ],
    );
  }

}
