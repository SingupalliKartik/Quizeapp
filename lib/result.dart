import 'package:flutter/material.dart';
import 'quiz-brain.dart';
import 'package:google_fonts/google_fonts.dart';

Brain g = Brain();

class Result extends StatelessWidget {
  const Result({Key? key, required this.result});

  final int result;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xffF2F2F2),
            body: SafeArea(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Image.asset('images/img2.png'),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Center(
                                child: Text(
                                  "Your Score is ${result}",
                                  style: GoogleFonts.dancingScript(
                                    fontSize: 48,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ])))));
  }
}
