
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: myWidth * 0.4),
                    child: Image.asset("assets/images/portfolio image.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32.0, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/flutter.png"),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "Arunaditya",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Dasgupta",
                          style: GoogleFonts.roboto(
                            color: Colors.white70,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 40,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () => launchUrl(Uri.http("https://github.com/lordADG")),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/github.png"),
                                  radius: 15,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/linkedin.png"),
                                radius: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/instagram.png"),
                                radius: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/fb.png"),
                                radius: 15,
                              ),
                            )

                          ],
                        )

                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
