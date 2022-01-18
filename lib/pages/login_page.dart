import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String id = "login_page";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.green.shade900,
              Colors.green.shade400,
              Colors.green.shade400
            ],
          )),
          child: Column(
            children: [
              ///First Part
              Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Welcome Back",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  )),
              ///Second Part
              Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 60,
                          ),

                          ///TextField
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      blurRadius: 20,
                                      spreadRadius: 10,
                                      offset: Offset(0, 10)),
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                TextField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      border: InputBorder.none,
                                      isCollapsed: false,
                                      hintStyle: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Email"),
                                ),
                                Divider(
                                  color: Colors.black26,
                                  height: 5,
                                ),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Password"),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 35,
                          ),

                          ///Button Login
                          MaterialButton(
                            onPressed: () {},
                            height: 45,
                            minWidth: 230,
                            child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                            textColor: Colors.white,
                            color: Colors.green.shade700,
                            shape: StadiumBorder(),
                          ),
                          SizedBox(
                            height: 25,
                          ),

                          Text("Login with SNS",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                          SizedBox(height: 25,),

                          ///Buttons FaceBook, Github
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                             MaterialButton(onPressed: (){},
                                 color: Colors.blue,
                                 shape: StadiumBorder(),
                                 minWidth: 130,
                                 height: 40,

                           child: Text("FaceBook",style: TextStyle(color: Colors.white),)
                             ),
                            MaterialButton(onPressed: (){},child: Text("Github",style: TextStyle(color: Colors.white),),
                            shape: StadiumBorder(),
                              minWidth: 130,
                              height: 40,
                              color: Colors.black,
                            )],
                          )
                        ],
                      ),
                    ),
                  )) ,
            ],
          ),
        ),
      ),
    );
  }
}
