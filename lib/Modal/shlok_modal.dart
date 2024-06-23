class ShlokModal {
  String? Dhoe;
  String? Hindi;
  String? Gujarati;
  String? English;

  ShlokModal({
    this.Dhoe,
     this.Hindi,
     this.Gujarati,
     this.English,
  });

  factory ShlokModal.fromJson(Map json) => ShlokModal(

  Dhoe: json['Dhoe'],
  Hindi: json['Hindi'],
  Gujarati: json['Gujarati'],
  English: json['English'],


  );
}

