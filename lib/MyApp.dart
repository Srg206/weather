import 'package:flutter/material.dart';
import 'Weather_getting/Get_Weather.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Search Weather',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myController = TextEditingController();
  String CityName="zolmkmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmv";
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/file40450.jpg'),
            // Путь к вашему изображению
            fit: BoxFit.cover,
          ),
        ),
        //child: TextField(
          //controller: myController,
        //),
      ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.05,
          left: 20,
          right: 20,

          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField( // или TextFormField
                  controller: myController,
                  decoration: InputDecoration(
                    hintText: 'Введите что-то',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    CityName=myController.text.toString();
                    debugPrint(CityName);

                  });
                },
                child: Text('Нажмите сюда'),
              ),
            ],
          ),
        ),
        Center(
        child: Text(CityName ),
        )
      ]
    )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
