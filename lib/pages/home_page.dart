import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_ui/pages/login_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  RichText _convertHashtag(String text) {
    List<String> split = text.split(RegExp("#"));
    List<String> hashtags = split.getRange(1, split.length).fold([], (t, e) {
      var texts = e.split(" ");
      if (texts.length > 1) {
        return List.from(t)
          ..addAll(["#${texts.first}", "${e.substring(texts.first.length)}"]);
      }
      return List.from(t)..add("#${texts.first}");
    });
    return RichText(
      text: TextSpan(
        children: [TextSpan(text: split.first)]..addAll(hashtags
            .map((text) => text.contains("#")
            ? TextSpan(text: text, style: TextStyle(color: Colors.blue))
            : TextSpan(text: text))
            .toList()),
      ),
    );
  }


  void fireToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RichText(
            text: TextSpan(
                text: "We'll divide the ",
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: [
                  TextSpan(
                      text: "#text",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          fireToast("Hash tag #text");
                        }),
                  TextSpan(text: ' into ', style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: "#two",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                        Navigator.pushNamed(context, LoginPage.id);
                          fireToast("Hash tag #two");
                        }),
                  TextSpan(text: ' parts.', style: TextStyle(color: Colors.black)),
                ]),
          ),
        ),
      ),
    );
  }
}
