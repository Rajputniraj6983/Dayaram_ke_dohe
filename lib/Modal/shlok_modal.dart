import 'package:flutter/material.dart';
class ShlokModal {
  String Dhoe;
  String Hindi;
  String Gujarati;
  String English;

  ShlokModal({
    required this.Dhoe,
    required this.Hindi,
    required this.Gujarati,
    required this.English,
});

  factory ShlokModal.fromJson(Map json){
    return ShlokModal(Dhoe: json['Dhoe'], Hindi: json['Hindi'], Gujarati: json['Gujarati'], English: json['English']);
  }

}