import 'package:flutter/material.dart';

class MyTagsWidget extends StatelessWidget {
  // const MyTagsWidget({Key? key}) : super(key: key);
  final String? JsonImage;
  const MyTagsWidget ({
    this.JsonImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white70,
      width: 75,
      // height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black12,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            JsonImage == null ? "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Falexisvt.gallerycdn.vsassets.io%2Fextensions%2Falexisvt%2Fflutter-snippets%2F2.0.0%2F1555603204922%2FMicrosoft.VisualStudio.Services.Icons.Default&f=1&nofb=1": 
            "$JsonImage",
          )
        )
      ),
      child: TextButton(
        onPressed: (){},
        child: Text("")
      ),
    );
  }
}