import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static const String id = "sign_page";

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.black87,
                Colors.black45,
                Colors.black38,
                Colors.black45
              ])),
          child: Column(
            children: [
              ///First Part
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Welcome",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  )),

              ///Second Part
              Expanded(
                flex: 3,
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          height: 230,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
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

                              //Fullname
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Fullname",
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(fontSize: 14,color: Colors.grey)
                                ),
                              ),
                              Divider(
                                color: Colors.black26,
                                height: 7,
                              ),

                              //Email
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Email",
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(fontSize: 14,color: Colors.grey)
                                ),
                              ),
                              Divider(
                                color: Colors.black26,
                                height: 7,
                              ),

                              //Phone
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Phone",
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(fontSize: 14,color: Colors.grey)
                                ),
                              ),
                              Divider(
                                color: Colors.black26,
                                height: 7,
                              ),

                              //Password
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(fontSize: 14,color: Colors.grey)
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(height: 20,),

                        ///Sign Up Button
                        MaterialButton(onPressed: (){},
                          color: Colors.grey.shade700,
                          minWidth: 210,
                          height: 40,
                          shape: StadiumBorder(),
                          child: Text("SignUp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 20,),

                        ///Sign up with SNS
                        Text("Sign Up with SNS",style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),

                        ///Bottom Buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(onPressed: (){},
                            child: Text("Facebook",style: TextStyle(color: Colors.white)),
                              color: Colors.blue,
                              shape: StadiumBorder(),
                            ),
                            MaterialButton(onPressed: (){},
                              child: Text("Google",style: TextStyle(color: Colors.white),),
                              color: Colors.red,
                              shape: StadiumBorder(),
                            ),
                            MaterialButton(onPressed: (){},
                              child: Text("Apple",style: TextStyle(color: Colors.white)),
                              color: Colors.black,
                              shape: StadiumBorder(),
                            ),
                          ],
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
