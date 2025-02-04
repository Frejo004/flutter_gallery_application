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
            GalleryCard(
              icon: Icons.diamond_outlined,
              title: "Shrine",
              description: 'Shine is a beautilful app',
              color: Colors.brown[200],
              ),

            GalleryCard(
              icon: Icons.diamond_outlined,
              title: "Shrine",
              description: 'Shine is a beautilful app',
              color: Colors.yellow[200],
              ),

            GalleryCard(
              icon: Icons.diamond_outlined,
              title: "Shrine",
              description: 'Shine is a beautilful app',
              color: Colors.blue[200],
              ),

            GalleryCard(
              icon: Icons.diamond_outlined,
              title: "Shrine",
              description: 'Shine is a beautilful app',
              color: Colors.brown[200],
              ),
          ],
        ),
      ],
    );
  }
}

class GalleryCard extends StatelessWidget {
    final  IconData icon;
    final String title;
    final String description;
    final Color? color;

    
  const GalleryCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(26.0),
    
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
        Icon(icon, size: 80,),
        const Spacer(),
        Text(title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22
          ),
          ),
        Text(description),
      ]),
    ),
      );
  }
}
