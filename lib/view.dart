import 'package:flutter/material.dart';
import 'package:stage_1/web_viewpage.dart';

class MyView extends StatelessWidget {
  const MyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFF464552),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'OKUNDALAYE GREAT',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFFCDCDD1),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    radius: 100.0,
                    backgroundImage: AssetImage('images/face.JPG'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Material(
                    elevation: 5.0,
                    color: const Color(0xFF85848D),
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GithubPage(),
                            ));
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: const Text(
                        'Open Github',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
