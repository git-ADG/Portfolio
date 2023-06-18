import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
                            backgroundImage:
                                AssetImage("assets/images/flutter.png"),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "ARUNADITYA",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "DASGUPTA",
                          style: GoogleFonts.roboto(
                            color: Colors.white70,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () =>
                                    launch('https://github.com/lordADG'),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/github.png"),
                                  radius: 15,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () => launch(
                                    'https://www.linkedin.com/in/arunaditya-dasgupta-662aa4256'),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/linkedin.png"),
                                  radius: 15,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () => launch(
                                    'https://instagram.com/adg.k.saste.nashe?igshid=MzNlNGNkZWQ4Mg=='),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/instagram.png"),
                                  radius: 15,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () => launch(
                                    'https://www.facebook.com/arunaditya.dasgupta'),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/fb.png"),
                                  radius: 15,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                    color: Colors.black87
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("INTRODUCTION",style: GoogleFonts.roboto(
                          color: Colors.white.withOpacity(0.5),fontSize: 15
                        ),),
                        SizedBox(height: 20,),
                        Text("A 1st year engineering student from NIT, "
                            "learning to code and getting acquainted with new "
                            "technologies in the programming world. I'm an"
                            " enthusiastic Flutter developer and currently "
                            "working on a number of basic mobile apps. "
                            "I have also learnt front-end web development "
                            "and basics of UI/UX designing.", style: GoogleFonts.nunito(
                          color: Colors.white, fontSize: 18,
                        ),),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
