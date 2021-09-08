import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class GifPage extends StatelessWidget {
  final Map gifData;

  const GifPage({Key? key, required this.gifData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gifData["title"]),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              Share.share(gifData["images"]["fixed_height"]["url"]);
            },
            icon: Icon(
              Icons.share,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(gifData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
