import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_class_app/home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFF2FB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.5,
                decoration: BoxDecoration(
                  color: Color(0xff00AFF5),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height/1.5 - 100,
                  left: 20.0,
                  right: 20.0
                ),
                child: Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: LoginButton(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatefulWidget {
  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
          controller: nameTextEditingController,
          autofocus: false,
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: 'Noto_Sans'
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
            hintText: 'Name',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 5.0
          ),
          child: TextField(
            controller: emailTextEditingController,
            autofocus: false,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Noto_Sans'
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
              hintText: 'Email',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
            ),
          ),
        ),
        Spacer(),
        Material(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          color: Colors.blueAccent,
          clipBehavior: Clip.antiAlias,
          child: MaterialButton(
            minWidth: 120.0,
            height: 40.0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontFamily: 'Noto_Sans',
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  HomeScreen(loginName: nameTextEditingController.text, loginEmail: emailTextEditingController.text,)
              ));
            },
          ),
        )
      ],
    );
  }
}