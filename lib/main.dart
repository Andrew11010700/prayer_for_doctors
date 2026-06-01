import 'package:flutter/material.dart';
import 'package:prayer_for_doctors/widgets/MenuOutlinedButton.dart';

import 'model/MenuItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medicine pray',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.indigo),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      MenuItem(text: 'Поставити свічку', icon: Icons.local_fire_department),
      MenuItem(text: 'Сповідальня', icon: Icons.volunteer_activism),
      MenuItem(text: 'Посвятити', icon: Icons.volunteer_activism_outlined),
      MenuItem(text: 'Панахида', icon: Icons.volunteer_activism_outlined),
      MenuItem(text: 'Молитва дня', icon: Icons.volunteer_activism_outlined),
      MenuItem(text: 'Налаштування', icon: Icons.settings),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          title: const Text('Молитва для медиків'),
          centerTitle: true,
        ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),

           Center(
             child: ListView(
               shrinkWrap: true,
               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
               children: [
                 const Text(
                   'Онлайн церква',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     color: Colors.indigo,
                     fontSize: 30,
                     fontWeight: FontWeight.bold,
                   ),
                 ),

                 const SizedBox(height: 32),

                 Column(
                   children: menuItems.map((item) {
                     return Padding(
                       padding: const EdgeInsets.only(bottom: 24),
                       child: MenuOutlinedButton(
                         text: item.text,
                         icon: item.icon,
                         foregroundColor: Colors.indigo,
                       ),
                     );
                   }).toList(),
                 ),

               ],
             ),
           )
        ],
      ),
    );
  }

}
