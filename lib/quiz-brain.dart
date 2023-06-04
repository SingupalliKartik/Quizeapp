import 'package:quizeapp/main.dart';

import 'question.dart';
import 'main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';




class Brain {
  bool full = false;
  int gg = 0;
  int _curquesion = 0;
  List<Questions> _questions = [
    Questions('TextField widget allows app users to type text into an app.', true),
    Questions( 'Adding a Slider widget in a Flutter app interface should be used to select multiple values at the sametime.', false),
    Questions('The Container is a Flutter widget that allows you to customize, compose, decorate and position its childwidget.', true),
    Questions('In Flutter, AlertDialog Widget is similar to a small interface which appears for a few seconds at thebottom of the app user interface when the app user takes a specific action such as clicking a button.', false),
    Questions('When you want to create a Flutter app, you need to configure a lot of widgets and change their format. You don\'t need to create everything from scratch. You can easily add the Scaffold class or widget toyour app. This class implements the basic material design visual layout structure for your app. ', true),
    Questions('You may add a lot of properties to your Container widget such as background color, size, padding,margins, borders or the shape of text, and other properties.', true),
    Questions('A Stateful widget is a dynamic widget which can change the appearance of its content in response toevents triggered by user\'s interactions or when it receives data.', true),
    Questions('You can add or import a new font to your Flutter by pasting this font file in a font folder in your Flutterproject without needing to declare this font file or the font folder in the pubspec.ymal. Is this correct ?', false),
    Questions('If you install the Flutter SDK on your computer and configure it as a plug-in for Android Studio or another IDE software, Android Studio will be able to create Flutter apps.', true),
    Questions('If you want to create a Flutter app using a Mac computer, you need to install Android Studio or another IDE software and another prerequisite software Flutter SDK. However, you can test your Flutter apps using IPhone emulator only.    ', false),
    Questions('When you build a Flutter app, you can use an Android or an IPhone emulator to test your app UI (userinterface ) and its work flow. But you can NOT test this app on a real Android or IPhone device before publishing your app on Apple or Google store.', false),
    Questions('Flutter widgets are the basic building blocks of a Flutter user interface. Almost everything in Flutter app is a widget such as images, icons, texts, menus, buttons, row, column etc.', true),
    Questions('In Flutter development, you can add three rows inside a column and add an image within each row.', true),
  ];
  onBasicAlertPressed(quizpage) {

    Alert(

      context: quizpage,
      title: "Your score is ${gg}",
      desc: "Thanks for playing .",
    ).show();
  }
void nextque(){
  if(_curquesion< _questions.length-1 )
    {
      full = false;
      _curquesion++;
    }

 else{

    reset();
full = true;



  }


}

  String getText (){
    return _questions[_curquesion].quesion;
  }
  bool getans ( ){
    return _questions[_curquesion].answer;
  }

  void reset(){
    _curquesion = 0;


  }
}
