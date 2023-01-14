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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Native Splash Screen',
      theme: ThemeData(
        
        //primarySwatch: Colors.blue,

        brightness: Brightness.light
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: const AppHome(),
      //How we can Switch with dark and light theme , we can also set up to current sysytem theme
      themeMode: ThemeMode.system,
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WATCH"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children:  [
            const Text("Hai"),
            const Text("Hello"),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
            const SizedBox(height: 20,),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outlined Button"),
            ),
             Padding(
              padding:  const EdgeInsets.all(10),
              child: Image.asset('/home/ubantu/Luminar_Nov/native_splash_screen/assets/images/watches.jpg'),
            )
          ],
        ),
      ),
    );
  }
}


