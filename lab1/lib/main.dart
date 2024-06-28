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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 4, 163, 242)),
        useMaterial3: true,
      ),
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> people = [
      {"name": "จักรพรรดิ์ อนุไพร 643450065-4", "image": 'image/D.jpg'},
      {"name": "นริศรา วงค์บุตรศรี 643450328-8", "image": 'image/narisara.jpg'},
      {"name": "วรรณภา เบ้านาค 643450330-1", "image": 'image/wannapa.jpg'},
      {"name": "อฆพร ไร่ขาม 643450334-3", "image": 'image/akapron.jpg'},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App"),
      ),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          return displayNameItem(
            name: people[index]["name"]!,
            imagePath: people[index]["image"]!,
          );
        },
      ),
    );
  }

  Widget displayNameItem({required String name, required String imagePath}) {
    bool isHighlight = name == "จักรพรรดิ์ อนุไพร 643450065-4";
    return Container(
      padding: const EdgeInsets.all(10),
      color: isHighlight
          ? Color.fromARGB(255, 0, 0, 0)
          : Color.fromARGB(200, 8, 232, 19),
      child: Row(
        children: [
          Image(
            width: 100,
            image: AssetImage(imagePath),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: isHighlight ? FontWeight.bold : FontWeight.normal,
              color: isHighlight
                  ? Color.fromARGB(255, 241, 237, 237)
                  : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
