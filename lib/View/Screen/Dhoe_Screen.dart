import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:rahim_ke_dohe/Provider/Data_provider.dart';
import 'package:share_extend/share_extend.dart';

class DhoeScreen extends StatelessWidget {
   DhoeScreen({super.key});

 // get index => null;


  @override
  Widget build(BuildContext context) {
    DataProvider provider = Provider.of<DataProvider>(context, listen: true);
    DataProvider providerF = Provider.of<DataProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(
          "Dayaram k Dhoe With Meaning",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(onTap: () {
            showDialog(context: context, builder: (context) => AlertDialog(
              backgroundColor: Colors.grey,
              title: Column(
                children: [
                  // InkWell(onTap: () {
                  //   provider.userlist[index].English as String;
                  // },child: Text('English',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                  // InkWell(onTap: () {
                  //   provider.userlist[index].Hindi as String;
                  // },child: Text('Hindi',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                  // InkWell(onTap: () {
                  //   provider.userlist[index].Gujarati as String;
                  // },child: Text('Gujarati',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                ],
              ),
              
            ),);
          },child: Icon(Icons.g_translate,size: 35,color: Colors.blue,))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                    ...List.generate(
                      provider.userlist.length,
                      (index) => Center(
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
                                ),
                                Divider(),
                                Text(
                                  "संस्कृत",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                Text(
                                  provider.userlist[index].Dhoe as String,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),SizedBox(height: 10),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 60),
                                      child: Container(
                                        height: 30,
                                        width: 80,
                                        child: Center(
                                            child: InkWell(onTap: () {
                                              ShareExtend.share('${provider.userlist[index].Hindi}','text');
                                            },
                                              child: Text(
                                                'Share',
                                                style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                                                                      ),
                                            )),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.grey),
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 50),
                                      child: Container(
                                        height: 30,
                                        width: 80,
                                        child: Center(
                                          child: InkWell(onTap: () {
                                            Clipboard.setData(ClipboardData(text: '${provider.userlist[index].Hindi}'));
                                          },
                                            child: Text(
                                              'Copy',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                      color: Colors.grey),
                                      ),
                                    )
                                  ],
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
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
