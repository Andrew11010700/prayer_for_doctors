import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medicine pray',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/background.jpg.webp',
                fit: BoxFit.cover,
              ),
            ),

            // твій контент поверх картинки
            Center(
              child: Column(
                children: [
                  SizedBox(height: 48),

                  Text(
                    'Молитва для медиків',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 46,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 380,
                            child: OutlinedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.local_fire_department, size: 35),
                              label: Text('Поставити свічку', style: TextStyle(fontSize: 35)),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.indigo,
                                padding: EdgeInsets.symmetric(vertical: 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 26),

                          SizedBox(
                            width: 380,
                            child: OutlinedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.volunteer_activism, size: 35),
                              label: Text('Сповідальня', style: TextStyle(fontSize: 35)),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.indigo,
                                padding: EdgeInsets.symmetric(vertical: 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 26),

                          SizedBox(
                            width: 380,
                            child: OutlinedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.volunteer_activism_outlined, size: 35),
                              label: Text('Посвятити', style: TextStyle(fontSize: 35)),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.indigo,
                                padding: EdgeInsets.symmetric(vertical: 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 26),

                          SizedBox(
                            width: 380,
                            child: OutlinedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.volunteer_activism_outlined, size: 35),
                              label: Text('Панахида', style: TextStyle(fontSize: 35)),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.indigo,
                                padding: EdgeInsets.symmetric(vertical: 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 26),

                          SizedBox(
                            width: 380,
                            child: OutlinedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.volunteer_activism_outlined, size: 35),
                              label: Text('Молитва дня', style: TextStyle(fontSize: 35)),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.indigo,
                                padding: EdgeInsets.symmetric(vertical: 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ]
                      ),
                    ),
                  ),
                ]
              )
            ),
          ],
        )
    );
  }

}
