import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rahim_ke_dohe/Provider/Theme_provider.dart';
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
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text('Setting',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
              ],
            ),
            Row(
              children: [
                Icon(!Provider.of<ThemeProvider>(context).isThemeDark
                 ? Icons.wb_sunny_rounded
                : Icons.dark_mode_rounded),
                Row(
                  children: [
                    Text("   Theme",style:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Switch(value: Provider.of<ThemeProvider>(context).isThemeDark, onChanged: (value){
                Provider.of<ThemeProvider>(context,listen: false).changeTheme(value);
              }),
            ),
            SizedBox(height: 10),
            Container(
              height: 350,
              width: 350,
              child: Column(
                children: [
                  Container(height: 150,width: 150,child: Padding(
                    padding: const EdgeInsets.only(bottom: 170),
                    child: Image.asset('assets/kavi image.jfif',),),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
                  ), Text("नाम = कवि दयाराम",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                   Text("जनम = 1833-1909",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  Text("सतसई परंपरा के नीति कवि।",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.black),gradient: LinearGradient(colors: [
                Colors.brown,
                Colors.brown.shade300,
              ])),
            ),SizedBox(height: 20),
            Container(
                height: 60,
                width: 340,
                child: Center(child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => DhoeScreen()));
                },
                    child: Text('|| दयाराम के दोहे || ', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)))),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55),
                  border: Border.all(color: Colors.black),
                  gradient: LinearGradient(
                      colors: [
                        Colors.brown,
                        Colors.brown.shade300,
                      ]
                  ),)),
          ],
        ),
      ),
    );
  }
}
