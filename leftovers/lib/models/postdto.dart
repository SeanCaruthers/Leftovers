import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:leftovers/services/location/access_current_location.dart';
import 'package:location/location.dart';

class PostDto {
  static CollectionReference posts =
      FirebaseFirestore.instance.collection('posts');

  late String imageUrl;

  late int leftoverCount;

  late double latitude;
  late double longitude;

  late DateTime date;

  PostDto();

  void saveCount(String value) {
    this.leftoverCount = int.parse(value);
  }

  void saveLocation(LocationData location) {
    this.latitude = location.latitude!;
    this.longitude = location.longitude!;
    this.date = DateTime.fromMillisecondsSinceEpoch(location.time!.toInt());
  }

  void saveUrl(String url) {
    this.imageUrl = url;
  }

  Future<void> savePost(String imagePath) async {
    final location = await currentLocation();
    this.saveLocation(location!);

    final storage = FirebaseStorage.instance
        .ref()
        .child('images')
        .child(createFileName(location));

    UploadTask upload = storage.putFile(File(imagePath));
    await upload.whenComplete(() => {});

    final url = await storage.getDownloadURL();
    this.saveUrl(url);
  }

  createFileName(dynamic location) {
    String time = location!.time.toString();
    String loc = '${location.longitude}${location.latitude}';
    return '${time}${loc}';
  }

  Future<dynamic> uploadPost() async {
    return await posts.add({
      'imageUrl': this.imageUrl,
      'leftoverCount': this.leftoverCount,
      'latitude': this.latitude,
      'longitude': this.longitude,
      'date': this.date,
    });
  }
}
