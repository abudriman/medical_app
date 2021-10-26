import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/medical_app/medical_app.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(65),
              bottomRight: Radius.circular(65),
            ),
            child: Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              color: Colors.indigo.shade50,
            ),
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircularButton(
                      icon: const Icon(Icons.chevron_left, size: 15.0),
                      onPressed: () {},
                    ),
                    CircularButton(
                      icon: const Icon(Icons.edit, size: 15.0),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://www.placecage.com/640/360',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'Nicolas Cage',
                      softWrap: true,
                      style: TextStyle(
                          color: Colors.indigo.shade700,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                  ),
                  Text(
                    'Male • 199 years old',
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 10),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.indigo.shade600,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: Row(
                            children: const <Widget>[
                              Icon(
                                Icons.account_box,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Overview',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.indigo.shade600,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: Row(
                            children: const <Widget>[
                              Icon(
                                Icons.science,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Lab Results',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.indigo.shade600,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: Row(
                            children: const <Widget>[
                              Icon(
                                Icons.medication,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Medications',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12))
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                child: Row(
                  children: [Text('This Months')],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.link, color: Colors.white),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('4',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Text(
                              'On Pills',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.transform_outlined,
                                      color: Colors.white),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('4',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Text(
                              'Days Off',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.red.shade300,
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.description,
                                      color: Colors.white),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('4',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Text(
                              'In Hospital',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                child: Row(
                  children: [Text('Online Sessions')],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 25.0, left: 15),
                  child: BarChart(
                    BarChartData(
                        maxY: 60,
                        rangeAnnotations: RangeAnnotations(),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        titlesData: FlTitlesData(
                            rightTitles: SideTitles(showTitles: false),
                            topTitles: SideTitles(showTitles: false),
                            leftTitles: SideTitles(
                              showTitles: true,
                              interval: 30,
                              getTitles: (double value) {
                                switch (value.toInt()) {
                                  case 0:
                                    return '0 min';
                                  case 30:
                                    return '30 min';
                                  case 60:
                                    return '60 min';
                                  default:
                                    return '';
                                }
                              },
                              margin: 0,
                              reservedSize: 35,
                              getTextStyles: (context, value) =>
                                  const TextStyle(
                                      fontSize: 9, color: Colors.grey),
                            ),
                            bottomTitles: SideTitles(
                                showTitles: true,
                                getTextStyles: (context, value) =>
                                    const TextStyle(
                                        fontSize: 9, color: Colors.grey))),
                        gridData: FlGridData(show: false),
                        groupsSpace: 10,
                        barGroups: [
                          BarChartGroupData(x: 1, barRods: [
                            BarChartRodData(
                              y: 30,
                              width: 12,
                              colors: [Colors.indigo.shade400],
                              backDrawRodData: BackgroundBarChartRodData(
                                show: true,
                                y: 60,
                                colors: [Colors.grey.shade200],
                              ),
                            ),
                          ]),
                          BarChartGroupData(x: 2, barRods: [
                            BarChartRodData(
                              y: 27,
                              width: 12,
                              colors: [Colors.indigo.shade400],
                              backDrawRodData: BackgroundBarChartRodData(
                                show: true,
                                y: 60,
                                colors: [Colors.grey.shade200],
                              ),
                            ),
                          ]),
                          BarChartGroupData(x: 3, barRods: [
                            BarChartRodData(
                              y: 15,
                              width: 12,
                              colors: [Colors.indigo.shade400],
                              backDrawRodData: BackgroundBarChartRodData(
                                show: true,
                                y: 60,
                                colors: [Colors.grey.shade200],
                              ),
                            ),
                          ]),
                          BarChartGroupData(x: 4, barRods: [
                            BarChartRodData(
                              y: 18,
                              width: 12,
                              colors: [Colors.indigo.shade400],
                              backDrawRodData: BackgroundBarChartRodData(
                                show: true,
                                y: 60,
                                colors: [Colors.grey.shade200],
                              ),
                            ),
                          ]),
                          BarChartGroupData(x: 5, barRods: [
                            BarChartRodData(
                              y: 40,
                              width: 12,
                              colors: [Colors.indigo.shade400],
                              backDrawRodData: BackgroundBarChartRodData(
                                show: true,
                                y: 60,
                                colors: [Colors.grey.shade200],
                              ),
                            ),
                          ]),
                          BarChartGroupData(x: 6, barRods: [
                            BarChartRodData(
                              y: 18,
                              width: 12,
                              colors: [Colors.indigo.shade400],
                              backDrawRodData: BackgroundBarChartRodData(
                                show: true,
                                y: 60,
                                colors: [Colors.grey.shade200],
                              ),
                            ),
                          ]),
                          BarChartGroupData(x: 7, barRods: [
                            BarChartRodData(
                              y: 21,
                              width: 12,
                              colors: [Colors.indigo.shade400],
                              backDrawRodData: BackgroundBarChartRodData(
                                show: true,
                                y: 60,
                                colors: [Colors.grey.shade200],
                              ),
                            ),
                          ]),
                          BarChartGroupData(x: 8, barRods: [
                            BarChartRodData(
                              y: 30,
                              width: 12,
                              colors: [Colors.indigo.shade400],
                              backDrawRodData: BackgroundBarChartRodData(
                                show: true,
                                y: 60,
                                colors: [Colors.grey.shade200],
                              ),
                            ),
                          ]),
                          BarChartGroupData(x: 9, barRods: [
                            BarChartRodData(
                              y: 45,
                              width: 12,
                              colors: [Colors.indigo.shade400],
                              backDrawRodData: BackgroundBarChartRodData(
                                show: true,
                                y: 60,
                                colors: [Colors.grey.shade200],
                              ),
                            ),
                          ]),
                        ]),
                  ),
                ),
              ),
              Container(),
            ],
          )
        ],
      )),
    );
  }
}
