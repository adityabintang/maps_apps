import 'package:flutter/material.dart';
import 'package:maps_apps/navigation_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController latDestination = TextEditingController();
  TextEditingController lngDestination = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps Apps'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Enter your location',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: latDestination,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'latitude',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: lngDestination,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'longitute',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NavigationScreen(
                        double.parse(latDestination.text),
                        double.parse(lngDestination.text),
                      ),
                    ),
                  );
                },
                child: const Text('Get Directions'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
