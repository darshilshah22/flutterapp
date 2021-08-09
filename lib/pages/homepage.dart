import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final imageUrl =
      "https://media-exp3.licdn.com/dms/image/C4D03AQFPfrtX0T-pDQ/profile-displayphoto-shrink_400_400/0/1604468892512?e=1628726400&v=beta&t=x60q_Z8LujfKKYeUSJGL6H3GJWu7zi7qbYLit2dTHKE";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "10 Aug, Tuesday".text.xl.color(Colors.grey).make(),
                      "Hi, Darshil!".text.xl4.bold.color(Colors.black).make(),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 60,
                    width: 60,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey
                ),
                child: Column(
                  children: [
                    Container(
                      padding: Vx.m32,
                      child: "Balance".text.xl4.bold.color(Colors.black).make(),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: Vx.m32,
                      child: "Balance".text.xl4.bold.color(Colors.black).make(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
