import 'package:flutter/material.dart';

// Classe principale qui contrôle la structure de la page
class MainController extends StatelessWidget {
  const MainController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // Aligner les éléments au début de l'axe horizontal (gauche)
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Conteneur pour la galerie
        Container(
          child: Gallery(),
        ),

        // Espacement vertical entre la galerie et les catégories
        SizedBox(height: 200),

        // Conteneur pour les catégories
        Container(
          child: Categories(),
        ),
      ],
    );
  }
}


// Widget pour afficher la section "Categories"
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

// Widget pour afficher la section "Gallery"
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

        // Ligne contenant les cartes de la galerie
        Row(
          children: [
            // Carte de la galerie avec des propriétés personnalisées
            GalleryCard(
              icon: Icons.diamond_outlined,
              title: "Shrine",
              description: 'Shine is a beautiful app',
              color: Colors.brown[200], 
            ),

            GalleryCard(
              icon: Icons.diamond_outlined,
              title: "Shrine",
              description: 'Shine is a beautiful app',
              color: Colors.yellow[200],
            ),

            GalleryCard(
              icon: Icons.diamond_outlined,
              title: "Shrine",
              description: 'Shine is a beautiful app',
              color: Colors.blue[200],
            ),

            GalleryCard(
              icon: Icons.diamond_outlined,
              title: "Shrine",
              description: 'Shine is a beautiful app',
              color: Colors.brown[200],
            ),
          ],
        ),
      ],
    );
  }
}


// Widget pour une carte de la galerie
class GalleryCard extends StatelessWidget {
  final IconData icon; 
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
      width: 300, // Largeur de la carte
      height: 200, // Hauteur de la carte
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), 
        color: color, 
      ),
      child: Padding(
        padding: const EdgeInsets.all(26.0), // Marge intérieure
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Alignement des éléments à gauche
          children: [
            // Icône de la carte
            Icon(icon, size: 80),
            // Espaceur pour pousser le texte vers le bas
            const Spacer(),
            // Titre de la carte
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold, // Texte en gras
                fontSize: 22, // Taille de la police
              ),
            ),
            // Description de la carte
            Text(description),
          ],
        ),
      ),
    );
  }
}