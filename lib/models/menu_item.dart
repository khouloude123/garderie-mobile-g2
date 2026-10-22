class MenuItem {
  final int id;
  final String titre;
  final String description;
  final String icone;

  const MenuItem({
    required this.id,
    required this.titre,
    required this.description,
    required this.icone,
  });
}

const List<MenuItem> menusDuJour = [
  MenuItem(
    id: 1,
    titre: 'Petit déjeuner',
    description: 'Lait, céréales et fruits',
    icone: '🥣',
  ),
  MenuItem(
    id: 2,
    titre: 'Déjeuner',
    description: 'Poulet, riz et légumes',
    icone: '🍲',
  ),
  MenuItem(
    id: 3,
    titre: 'Goûter',
    description: 'Biscuit et compote de pomme',
    icone: '🍪',
  ),
  MenuItem(
    id: 4,
    titre: 'Jus de fruits',
    description: "Jus d'orange naturel",
    icone: '🍊',
  ),
  MenuItem(
    id: 5,
    titre: 'Fruits frais',
    description: 'Une sélection de fruits de saison',
    icone: '🍎',
  ),
];
