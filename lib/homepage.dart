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
                    padding: const EdgeInsets.only(left: 32.0, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage("assets/images/nits.png"),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "ARUNADITYA",
                          style: GoogleFonts.nunito(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "DASGUPTA",
                          style: GoogleFonts.nunito(
                            color: Colors.white70,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Socials()
                      ],
                    ),
                  ),
                ],
              ),
              DecoratedBox(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                    color: Colors.black87),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "INTRODUCTION",
                        style: GoogleFonts.nunito(
                            color: Colors.white.withOpacity(0.5), fontSize: 15),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "A 1st year engineering student from NIT, "
                        "learning to code and getting acquainted with new "
                        "technologies in the programming world. I'm an"
                        " enthusiastic Flutter developer and currently "
                        "working on a number of basic mobile apps. "
                        "I have also learnt front-end web development "
                        "and basics of UI/UX designing.",
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ProjectList(myWidth: myWidth),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Got a project?",
                  style: GoogleFonts.nunito(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Text(
                "Let's talk.",
                style: GoogleFonts.nunito(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "adg8503@gmail.com",
                  style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "That's it folks! Thank you for scrolling!",
                  style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Text(
                "Checkout my socials below",
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.only(left: myWidth * 0.25),
                child: const Socials(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Socials extends StatelessWidget {
  const Socials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => launch('https://github.com/lordADG'),
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/github.png"),
              radius: 15,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => launch(
                'https://www.linkedin.com/in/arunaditya-dasgupta-662aa4256'),
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/linkedin.png"),
              radius: 15,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => launch(
                'https://instagram.com/adg.k.saste.nashe?igshid=MzNlNGNkZWQ4Mg=='),
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/instagram.png"),
              radius: 15,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => launch('https://www.facebook.com/arunaditya.dasgupta'),
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/fb.png"),
              radius: 15,
            ),
          ),
        )
      ],
    );
  }
}

class ProjectList extends StatelessWidget {
  const ProjectList({
    super.key,
    required this.myWidth,
  });

  final double myWidth;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: const BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: SizedBox(
            width: myWidth,
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Flutter Projects.",
                  style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Have a look below.",
                  style: GoogleFonts.nunito(
                      color: Colors.yellow,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        launch('https://github.com/lordADG/Flutter-Calculator-for-E-Cell');
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.deepPurple),
                          elevation: const MaterialStatePropertyAll(5),
                          shadowColor: const MaterialStatePropertyAll(Colors.black),
                          padding: const MaterialStatePropertyAll(EdgeInsets.all(16)),
                          fixedSize: MaterialStatePropertyAll(
                              Size(myWidth * 0.4, myWidth * 0.4)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      child: Text(
                        "CalcMate-a scientific calculator",
                        style: GoogleFonts.nunito(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          launch('https://github.com/lordADG/catalog-app');
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.deepPurple),
                            elevation: const MaterialStatePropertyAll(5),
                            shadowColor: const MaterialStatePropertyAll(Colors.black),
                            padding:
                                const MaterialStatePropertyAll(EdgeInsets.all(16)),
                            fixedSize: MaterialStatePropertyAll(
                                Size(myWidth * 0.4, myWidth * 0.4)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)))),
                        child: Text(
                          "Catalog App",
                          style: GoogleFonts.nunito(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        launch('https://github.com/lordADG/pokedex');
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.deepPurple),
                          elevation: const MaterialStatePropertyAll(5),
                          shadowColor: const MaterialStatePropertyAll(Colors.black),
                          padding: const MaterialStatePropertyAll(EdgeInsets.all(16)),
                          fixedSize: MaterialStatePropertyAll(
                              Size(myWidth * 0.4, myWidth * 0.4)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      child: Text(
                        "Pokedex",
                        style: GoogleFonts.nunito(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          launch('https://github.com/lordADG/ToDo-List');
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.deepPurple),
                            elevation: const MaterialStatePropertyAll(5),
                            shadowColor: const MaterialStatePropertyAll(Colors.black),
                            padding:
                                const MaterialStatePropertyAll(EdgeInsets.all(16)),
                            fixedSize: MaterialStatePropertyAll(
                                Size(myWidth * 0.4, myWidth * 0.4)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)))),
                        child: Text(
                          "ToDo List",
                          style: GoogleFonts.nunito(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        launch('https://github.com/lordADG/notes-app');
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.deepPurple),
                          elevation: const MaterialStatePropertyAll(5),
                          shadowColor: const MaterialStatePropertyAll(Colors.black),
                          padding: const MaterialStatePropertyAll(EdgeInsets.all(16)),
                          fixedSize: MaterialStatePropertyAll(
                              Size(myWidth * 0.4, myWidth * 0.4)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      child: Text(
                        "Notes App",
                        style: GoogleFonts.nunito(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          launch('https://github.com/lordADG/Chat-GPT-Demo');
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.deepPurple),
                            elevation: const MaterialStatePropertyAll(5),
                            shadowColor: const MaterialStatePropertyAll(Colors.black),
                            padding:
                                const MaterialStatePropertyAll(EdgeInsets.all(16)),
                            fixedSize: MaterialStatePropertyAll(
                                Size(myWidth * 0.4, myWidth * 0.4)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)))),
                        child: Text(
                          "ChatGPT",
                          style: GoogleFonts.nunito(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )));
  }
}
