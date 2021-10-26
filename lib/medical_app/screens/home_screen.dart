import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blobs/blobs.dart';
import 'package:medical_app/medical_app/medical_app.dart';
import 'package:routemaster/routemaster.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.userName}) : super(key: key);
  final String userName;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: -540,
                left: -270,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100000),
                  child: Container(
                    height: 700,
                    width: 700,
                    color: Colors.indigo.shade50,
                  ),
                )),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircularButton(
                          icon: const Icon(Icons.menu, size: 15.0),
                          onPressed: () {},
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircularButton(
                              icon: const Icon(Icons.notifications_outlined,
                                  size: 15.0),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () =>
                                  Routemaster.of(context).push('/profile'),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://www.placecage.com/640/360',
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Welcome back,',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              widget.userName,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 10.0),
                            child: Text(
                              'Quick Access',
                            ),
                          ),
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Container(
                                      color: Colors.indigo.shade400,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 25, vertical: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color:
                                                      Colors.indigo.shade300),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Icon(
                                                    Icons.calendar_today_sharp,
                                                    color: Colors.white,
                                                    size: 18),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Requests',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Container(
                                      color: Colors.indigo.shade400,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 25, vertical: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color:
                                                      Colors.indigo.shade300),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Icon(
                                                    Icons.document_scanner,
                                                    color: Colors.white,
                                                    size: 18),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Patients',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Container(
                                      color: Colors.indigo.shade400,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 25, vertical: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color:
                                                      Colors.indigo.shade300),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Icon(
                                                    Icons.medical_services,
                                                    color: Colors.white,
                                                    size: 18),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Drugs',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 30, 15.0, 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Text("Today's Patients"),
                        Text(
                          'See all',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dashed),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              color: Colors.indigo.shade50,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const CircleAvatar(
                                      radius: 40,
                                      backgroundImage: NetworkImage(
                                        'https://www.placecage.com/400/400',
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Margaret',
                                            softWrap: true,
                                            style: TextStyle(
                                                color: Colors.indigo.shade700,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            'Osborn',
                                            softWrap: true,
                                            style: TextStyle(
                                                color: Colors.indigo.shade700,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'Personal Visit 9.00 am',
                                      style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              color: Colors.indigo.shade50,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundImage: NetworkImage(
                                        'https://www.placecage.com/310/310',
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Prue',
                                            softWrap: true,
                                            style: TextStyle(
                                                color: Colors.indigo.shade700,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            'Halliwell',
                                            softWrap: true,
                                            style: TextStyle(
                                                color: Colors.indigo.shade700,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'Personal Visit 9.00 am',
                                      style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Container(
                        color: Colors.indigo.shade400,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.calendar_today,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
