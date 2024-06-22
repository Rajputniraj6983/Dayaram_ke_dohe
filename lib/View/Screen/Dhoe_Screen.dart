import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rahim_ke_dohe/Provider/Data_provider.dart';

class DhoeScreen extends StatelessWidget {
  const DhoeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    DataProvider provider = Provider.of<DataProvider>(context,listen: true);
    DataProvider providerF = Provider.of<DataProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(
          "Dayaram k Dhoe With Meaning",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 740,
                width: 400,
                child: Image.asset(
                  "assets/background.jfif",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                 const SizedBox(height: 15),
                 const Text(
                    " || दयाराम के दोहे ||",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Container(
                        height: 200,
                        width: 380,
                        child: Column(
                          children: [
                            Text(
                              "दोहे",
                              style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                            ),Divider(),
                             Text("संस्कृत",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                            ),Text(provider.userlist[0].Hindi,
                             style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.brown,
                              Colors.brown.shade300,
                            ]),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black)),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}


