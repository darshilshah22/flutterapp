import 'package:flutter/material.dart';
import 'package:my_app1/utils/routes.dart';

class SplashPage extends StatelessWidget {

  Widget _title() {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Money App',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _title(),
          SizedBox(
            height: 50,
          ),
          Text(
              "Save Your Money",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Best Solution to save and \ninvest out money just \nwith smartphone",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.normal,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
          Material(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              child: Container(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(
                  fontSize: 16
                ),
              ),
              SizedBox(width: 2),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, MyRoutes.signupRoute);
                },
                child: Text(
                    "Sign up",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
