import 'package:ebook/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double imageWidth = screenSize.width * 0.8;
    final double imageHeight = screenSize.height * 0.3;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 252, 253, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Container(
                width: imageWidth,
                height: imageHeight,
                decoration: const BoxDecoration(

                ),
                child: Image.asset(
                  'assets/ebook.png',
                  width: imageWidth,
                  height: imageHeight,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Container(
              width: 390,
              height: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white, // Changed container color to white
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1.0), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset: const Offset(0, 3), // Offset
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 40.0),
                          child: Text(
                            'E-Book',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Ebook electronic media',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                          child: Text(
                            'An e-book or electronic book is a non-editable text that is converted into a digital format and displayed and read on an electronic device, such as a tablet or smartphone. Unlike other text that can be read on a device, an e-book is not editable. This is for the safety and protection of the author.',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 16.0,
                    right: 16.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyLogin()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Changed to backgroundColor
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Lets Go',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
