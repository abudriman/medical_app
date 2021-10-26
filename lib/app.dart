import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:routemaster/routemaster.dart';
import 'medical_app/medical_app.dart';

class MyApp extends StatelessWidget {
  final RouteMap routes = RouteMap(
    routes: <String, RouteSettings Function(RouteData)>{
      '/': (_) => const MaterialPage<dynamic>(
            child: MyHomePage(userName: 'Dr.Williams'),
          ),
      '/profile': (_) => const MaterialPage<dynamic>(
            child: ProfileScreen(),
          ),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routerDelegate:
          RoutemasterDelegate(routesBuilder: (BuildContext context) => routes),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}
