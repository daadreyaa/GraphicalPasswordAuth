
// To parse this JSON data, do

//     final domainRegister = domainRegisterFromJson(jsonString);

import 'dart:convert';

DomainRegister domainRegisterFromJson(String str) => DomainRegister.fromJson(json.decode(str));

String domainRegisterToJson(DomainRegister data) => json.encode(data.toJson());

class DomainRegister {
    DomainRegister({
        required this.domain,
        required this.puzzles,
        required this.apikey,
    });

    String domain;
    List<String> puzzles;
    String apikey;

    factory DomainRegister.fromJson(Map<String, dynamic> json) => DomainRegister(
        domain: json["domain"],
        puzzles: List<String>.from(json["puzzles"].map((x) => x)),
        apikey: json["apikey"],
    );

    Map<String, dynamic> toJson() => {
        "domain": domain,
        "puzzles": List<dynamic>.from(puzzles.map((x) => x)),
        "apikey": apikey,
    };
}
