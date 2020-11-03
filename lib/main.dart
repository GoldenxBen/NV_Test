import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'Sign Up': (_) => SignUp(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Northern Vessel',
      theme: ThemeData(
        primaryColor: Color(0xff5f6c56),
        accentColor: Color(0xff5f6c56),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color(0xff333333),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/images/nv_icon.svg',
              color: Color(0xff5f6c56),
              semanticsLabel: 'NV Icon',
              width: 152,
              height: 121,
            ),
          ),
        ],
      ),
      floatingActionButton: Center(
        child: SizedBox(
          width: 300,
          height: 50,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xff5f6c56)),
            ),
            child: Text('Sign Up',
                style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 21,
                )),
            onPressed: () {
              Navigator.of(context).pushNamed('Sign Up');
            },
          ),
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up Right Meow',
            style: GoogleFonts.workSans(fontWeight: FontWeight.w500)),
      ),
    );
  }
}
