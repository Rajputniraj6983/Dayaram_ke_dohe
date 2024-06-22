import 'package:flutter/material.dart';
import 'package:rahim_ke_dohe/View/Screen/Dhoe_Screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text(
            "Dayaram k Dhoe With Meaning",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15),
              Center(
                child: Container(
                    height: 60,
                    width: 340,
                    child: Center(child: InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => DhoeScreen()));
                    },
                        child: Text('Dayaram', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)))),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(55),
                      border: Border.all(color: Colors.black),
                      gradient: LinearGradient(
                          colors: [
                            Colors.orange.shade900,
                            Colors.orangeAccent
                          ]
                      ),)),
              ),
            ]
        )
    );
  }
}
