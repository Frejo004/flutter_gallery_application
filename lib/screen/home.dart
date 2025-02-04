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
      ],
    );
  }
}
