import 'package:flutter/material.dart';
import 'package:gsoc_ui/glassbox.dart';

//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/backgroundspace.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/earthclearbgless.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Image(
                              image: AssetImage('assets/logo.png'),
                              height: 100,
                              width: 100),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Master Controller for Liquid Galaxy',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'assets/MadimiOne-Regular.ttf'
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    GlassBox(
                      height: 94,
                      width: 94,
                      child: Padding(
                        padding: EdgeInsets.all(17.0),
                        child: Icon(
                          Icons.settings,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
