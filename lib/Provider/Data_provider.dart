import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:rahim_ke_dohe/Modal/shlok_modal.dart';

class DataProvider extends ChangeNotifier{
  List<dynamic> datalist = [];
  List<ShlokModal> userlist = [];
   DataProvider(){
     print("---------------------------------------------");
   Tojson();
     print("----------------------------------------------");
   }
   Future<void> Tojson()async {
     String jsonstr = await rootBundle.loadString('assets/Dayaram.json');
     datalist = jsonDecode(jsonstr);
     userlist = datalist.map((e) => ShlokModal.fromJson(e),).toList();
     print(userlist);
     notifyListeners();
   }

}
