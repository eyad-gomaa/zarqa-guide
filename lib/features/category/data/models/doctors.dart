class DataModel {
  final String about;
  final String instaUrl;
  final String faceUrl;
  final String? image;
  final String name;
  final String number;
  final String specialization;
  final String whatsapp;
  final String address;

  DataModel(
     {
       required this.instaUrl,
       required this.faceUrl,
    required this.about,
    required this.image,
    required this.name,
    required this.number,
    required this.specialization,
    required this.whatsapp,
    required this.address,
  });

  factory DataModel.fromJason(jsonData) {
    return DataModel(
      about: jsonData['about'] ?? "لا يوجد معلومات",
      image: jsonData['image'] ?? "https://firebasestorage.googleapis.com/v0/b/khadamat-app-946b3.appspot.com/o/images%2Fprofile.png?alt=media&token=e0ae877c-7694-4863-a933-b1038c3be749",
      name: jsonData['name'],
      number: jsonData['number']?? " ",
      specialization: jsonData['specialization'],
      whatsapp: jsonData['whatsapp']?? " ",
      address: jsonData['address']??"اتصال فقط",
      instaUrl: jsonData['instaUrl'] ?? " ",
      faceUrl: jsonData['faceUrl'] ?? " ",
    );
  }
}
