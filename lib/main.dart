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
        'Sign In': (_) => SignIn(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Northern Vessel',
      theme: ThemeData(
        primaryColor: Color(0xff5f6c56),
        accentColor: Color(0xff5f6c56),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color(0xff333333),
        buttonTheme: ButtonThemeData(
          minWidth: double.infinity,
          height: 50,
          buttonColor: Color(0xff5f6c56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9.0),
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            SizedBox(height: 100.0),
            authButton(
              context: context,
              title: 'Login',
              routeName: 'Sign In',
            ),
            SizedBox(height: 15.0),
            authButton(
              title: 'Sign Up',
              routeName: 'Sign Up',
              context: context,
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                socialIcon(
                  imageSwapper: 'assets/images/google.svg',
                  accessTitle: 'Google Login',
                ),
                SizedBox(width: 14.0),
                socialIcon(
                  imageSwapper: 'assets/images/facebook.svg',
                  accessTitle: 'Facebook Login',
                ),
                SizedBox(width: 14.0),
                socialIcon(
                  imageSwapper: 'assets/images/apple.svg',
                  accessTitle: 'Apple Login',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget socialIcon({
    String imageSwapper,
    String accessTitle,
  }) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff444A40),
          borderRadius: BorderRadius.circular(9.0),
        ),
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          imageSwapper,
          color: Color(0xff5f6c56),
          semanticsLabel: accessTitle,
          width: 30,
          height: 30,
        ),
      ),
    );
  }

  Widget authButton({
    @required BuildContext context,
    @required String title,
    @required String routeName,
  }) {
    return Center(
      child: RaisedButton(
        child: Text(
          title,
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w500,
            fontSize: 21,
            color: Color(0xff333333),
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(routeName);
        },
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up Right Meow',
          style: GoogleFonts.workSans(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Theme(
          data: ThemeData(
            textTheme: TextTheme(
              headline1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white),
            ),
          ),
          child: Builder(
            builder: buildBody,
          ),
        ),
      ),
    );
  }

  Widget buildBody(context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Text(
          'Snapshot',
          style: textTheme.bodyText2,
        ),
      ],
    );
  }
}
