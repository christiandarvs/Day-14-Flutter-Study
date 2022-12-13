import 'package:day_fourteen_study/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final scaffoldKey = GlobalKey<ScaffoldState>();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Day 14 - Study'),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: const AppDrawer(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Good Morning!',
                style: GoogleFonts.poppins(fontSize: 30),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 40,
                width: 150,
                child: ElevatedButton(
                    onPressed: (() {
                      scaffoldKey.currentState!.openDrawer();
                    }),
                    child: Text(
                      'Open Drawer',
                      style: GoogleFonts.poppins(fontSize: 17),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
