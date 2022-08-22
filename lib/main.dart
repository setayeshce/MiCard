import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold(body: myProfile()));
  }

  Widget myProfile() {
    return Container(
      width: 500,
      color: Colors.brown,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myImage(),
              title("setayesh hoseini", "Pacifico", 30.0),
              title("flutter developer", "AlumniSansPinstripe", 24.0),
              const SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              myBox("+98 912 000 000", Icons.phone),
              myBox("setayesh.hoseiini79@gmail.com", Icons.email)
            ],
          ),
        ),
      ),
    );
  }

  Widget myImage() {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Colors.white,
      backgroundImage: AssetImage('assets/images/me.jpg'),
    );
  }

  Widget title(myText, myFont, myFontSize) {
    return Text(
      myText,
      style: TextStyle(fontFamily: myFont, fontSize: myFontSize, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }

  Widget myBox(myText, myIcons) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        color: Colors.white,
        child: Row(
          children: [
            Icon(
              myIcons,
              color: Colors.brown,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              myText,
              style: TextStyle(
                  color: Colors.brown.shade600,
                  //   fontFamily: "AlumniSansPinstripe",
                  fontSize: 15.0),
            )
          ],
        ),
      ),
    );
  }
}
