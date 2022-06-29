import 'package:flutter/material.dart';
import 'package:flutter_portfolio/carousel.dart';
import 'package:url_launcher/link.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Welcome'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: const EdgeInsets.all(52.0),
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/1412989068137230339/IbnTZf0l_400x400.jpg',
                        ),
                        radius: 50),
                  ),
                  SizedBox(height: 25),
                  Center(
                      child: Text(
                    'MANIKANTA SRIRAM',
                    style:
                        TextStyle(fontSize: 24, fontFamily: 'MontserratBold'),
                  )),
                  SizedBox(height: 65),
                  Center(
                      child: Text(
                    'MY SKILLS:',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        letterSpacing: 2.0),
                  )),
                  SizedBox(height: 7),
                  Center(
                    child: Carousel(),
                  ),
                  SizedBox(height: 68),
                  Center(
                      child: Text(
                    'Connect with me here:',
                    style:
                        TextStyle(fontSize: 16, fontFamily: 'MontserratBold'),
                  )),
                  SizedBox(height: 04),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Link(
                            target: LinkTarget.blank,
                            uri:
                                Uri.parse('https://github.com/manikantasriram'),
                            builder: (context, followLink) => ElevatedButton(
                                  child: Text('Git-Hub',
                                      style: TextStyle(fontSize: 16)),
                                  onPressed: followLink,
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        Colors.grey[700], // Background color
                                  ),
                                )),
                        SizedBox(width: 10),
                        Link(
                            target: LinkTarget.blank,
                            uri: Uri.parse(
                                'https://instagram.com/mr.manikantasriram'),
                            builder: (context, followLink) => ElevatedButton(
                                  child: Text('Instagram',
                                      style: TextStyle(fontSize: 16)),
                                  onPressed: followLink,
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        Colors.pink[500], // Background color
                                  ),
                                )),
                        SizedBox(width: 10),
                        Link(
                            target: LinkTarget.blank,
                            uri: Uri.parse('https://twitter.com/syrm98'),
                            builder: (context, followLink) => ElevatedButton(
                                  child: Text('twitter',
                                      style: TextStyle(fontSize: 16)),
                                  onPressed: followLink,
                                )),
                      ],
                    ),
                  ),
                  SizedBox(height: 18),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Made with ",
                              style: TextStyle(color: Colors.black)),
                          WidgetSpan(
                            child: Image.network(
                              'https://img.icons8.com/color/344/flutter.png',
                              height: 22,
                              width: 22,
                            ),
                          ),
                          TextSpan(
                            text: " by ",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: "Manikanta Sriram",
                            style: TextStyle(
                                color: Colors.blue[600],
                                fontSize: 12,
                                fontFamily: 'Autumn'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
