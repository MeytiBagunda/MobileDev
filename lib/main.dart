import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Catpuccin Color Scheme
const baseClr = Color.fromARGB(255, 47, 47, 63);
const barClr = Color.fromARGB(255, 34, 31, 48);
const textClr = Color.fromARGB(255, 205, 214, 244);
const textClr2 = Color.fromARGB(255, 245, 224, 220);
const redClr = Color.fromARGB(255, 134, 139, 134);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: baseClr,
        brightness: Brightness.light,
        textTheme:
            GoogleFonts.robotoMonoTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: textClr,
          displayColor: textClr,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: barClr,
        title: const Text(
          'tims',
          style: TextStyle(fontSize: 50),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(270.0),
            child: Image.network(
              "https://media.licdn.com/dms/image/D5603AQHAQrDskYQEdQ/profile-displayphoto-shrink_200_200/0/1687008140176?e=1692230400&v=beta&t=HV7ZIuOpEO3hvc32kywxHacE9NYPdA1Isi2FEyyu6_k",
              height: 250,
              width: 250,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Meyti Bagunda",
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Student at University of Sam Ratulangi | 210211060136",
            style: TextStyle(fontSize: 16, color: textClr2),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.center,
            constraints: const BoxConstraints(maxWidth: 475),
            child: const Text("blinkeu"),
          ),
          const SizedBox(
            height: 75,
          ),
          const Text.rich(TextSpan(children: [
            TextSpan(text: "made with "),
            TextSpan(
                text: "\u2665 ",
                style: TextStyle(color: redClr, fontWeight: FontWeight.w900)),
            TextSpan(text: "by tims")
          ]))
        ],
      )),
    );
  }
}
