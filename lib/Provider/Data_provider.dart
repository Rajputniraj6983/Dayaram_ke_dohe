import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:rahim_ke_dohe/Modal/shlok_modal.dart';

class DataProvider extends ChangeNotifier{
  List datalist = [];
  List<ShlokModal> userlist = [];
  ShlokModal? shlokModal;
   DataProvider(){
     print("---------------------------------------------");
   Tojson();
     print("----------------------------------------------");
   }
   Future<void> Tojson()async {
     String? json = await rootBundle.loadString('assets/Dayaram.json');
     datalist = jsonDecode(json);
     userlist = datalist.map((e) => ShlokModal.fromJson(e),).toList();
   //  print(userlist[0].Gujarati);
     notifyListeners();
   }



}
