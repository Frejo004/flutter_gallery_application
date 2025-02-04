import 'package:flutter/material.dart';

class MainController extends StatelessWidget {
  const MainController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //alligner les éléments au début crossAxisAlignment
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Gallery(),
        ),
        SizedBox(height: 200),
        Container(
          child: Categories(),
        ),
      ],
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Categories",
          style: TextStyle(
            fontSize: 30,
            color: Colors.red[500],
            fontWeight: FontWeight.w900,
          )),
    );
  }
}

class Gallery extends StatelessWidget {
  const Gallery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text("Gallery",
              style: TextStyle(
                fontSize: 30,
                color: Colors.green[500],
                fontWeight: FontWeight.w900,
              )),
        ),
        Row(
          children: [
            GalleryCard(),

          ],
        ),
      ],
    );
  }
}

class GalleryCard extends StatelessWidget {
  const GalleryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.brown[100],
      ),
      child: Padding(
        padding: const EdgeInsets.all(26.0),
    
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
        Icon(Icons.diamond_outlined, size: 80,),
        const Spacer(),
        Text("Shrine",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22
          ),
          ),
        Text("The fashionable retail app"),
      ]),
    ),
      );
  }
}
