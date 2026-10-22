import 'package:flutter/material.dart';

import '../models/menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Fonction pour afficher un message en bas de l'écran
  void _showMessage(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma Garderie'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => _showMessage(context, 'Rechercher un menu'),
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () => _showMessage(context, 'Aucune notification'),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              child: Center(
                child: Text(
                  'Ma Garderie',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Accueil'),
              onTap: () {
                Navigator.pop(context); // Ferme le menu
                _showMessage(context, 'Accueil');
              },
            ),
            ListTile(
              leading: const Icon(Icons.restaurant_menu),
              title: const Text('Menus'),
              onTap: () {
                Navigator.pop(context);
                _showMessage(context, 'Menus');
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('À propos'),
              onTap: () {
                Navigator.pop(context);
                _showMessage(context, 'À propos');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showMessage(context, 'Ajouter un menu'),
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Menus du jour',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: menusDuJour.length,
              itemBuilder: (context, index) {
                final menu = menusDuJour[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 6,
                  ),
                  child: ListTile(
                    leading: Text(
                      menu.icone,
                      style: const TextStyle(fontSize: 32),
                    ),
                    title: Text(
                      menu.titre,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(menu.description),
                    onTap: () => _showMessage(
                      context,
                      'Menu sélectionné : ${menu.titre}',
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
