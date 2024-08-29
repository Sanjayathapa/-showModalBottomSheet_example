import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/dataprovider/bodyexpansion.dart';
import 'requestclarification.dart';

class CombinedScreen extends StatelessWidget {
  const CombinedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 1, 33, 68),
                Color.fromRGBO(0, 38, 69, 1),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 1, 33, 68),
              Color.fromRGBO(1, 63, 115, 1),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.030),
            // First Section: Sick Leave
            Consumer<BodyExpansionProvider>(
              builder: (context, bodyExpansionProvider, child) {
                return InkWell(
                  onTap: () {
                    bodyExpansionProvider.toggleExpanded();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 20,
                            child: Icon(
                              Icons.sentiment_very_satisfied,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                            'Sick Leave',
                            style: TextStyle(fontSize: screenHeight * 0.021),
                          ),
                          trailing: Text(
                            '3h ago',
                            style: TextStyle(
                                fontSize: screenHeight * 0.014,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        if (bodyExpansionProvider.isExpanded)
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.026,
                              vertical: screenHeight * 0.001,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.04),
                                  child: Divider(),
                                ),
                                SizedBox(height: screenHeight * 0.015),
                                Row(
                                  children: [
                                    Icon(Icons.location_pin,
                                        size: screenHeight * 0.020),
                                    SizedBox(width: screenWidth * 0.018),
                                    const Text('Leave Date: 2nd April (1 Day)'),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.006),
                                Row(
                                  children: [
                                    Icon(Icons.person,
                                        size: screenHeight * 0.021),
                                    SizedBox(width: screenWidth * 0.018),
                                    const Text('Requested by: Labis Ac'),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.006),
                                Row(
                                  children: [
                                    Icon(Icons.attach_file,
                                        size: screenHeight * 0.020),
                                    SizedBox(width: screenWidth * 0.018),
                                    const Text(
                                        'Files Attached: Doctor_Appointment.pdf'),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.028),
                                Column(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.92,
                                      height: screenHeight * 0.06,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          bodyExpansionProvider
                                              .toggleExpanded();
                                          print('Approve button pressed');
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          textStyle: TextStyle(
                                              fontSize:
                                                  screenHeight * 0.019),
                                        ),
                                        child: const Text(
                                          'Approve',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: screenHeight * 0.014),
                                    SizedBox(
                                      width: screenWidth * 0.92,
                                      height: screenHeight * 0.06,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          print('Decline button pressed');
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          textStyle: TextStyle(
                                              fontSize:
                                                  screenHeight * 0.019),
                                        ),
                                        child: const Text(
                                          'Decline',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: screenHeight * 0.014),
                                    SizedBox(
                                      width: screenWidth * 0.92,
                                      height: screenHeight * 0.06,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            context: context,
                                            builder:
                                                (BuildContext context) {
                                              return Container(
                                                height:
                                                    screenHeight * 0.32,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff14143C),
                                                ),
                                                child:
                                                    RequestClarificionDialog(),
                                              );
                                            },
                                          );
                                          print(
                                              'Request Clarification button pressed');
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          textStyle: TextStyle(
                                            fontSize:
                                                screenHeight * 0.020,
                                          ),
                                          side: const BorderSide(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 206, 205, 205),
                                          ),
                                        ),
                                        child: const Text(
                                          'Request Clarification',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: screenHeight * 0.019),
                                  ],
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: screenHeight * 0.02,),
            
            Consumer<BodyExpansioForpartyProvider>(
              builder: (context, bodyExpansionProvider, child) {
                return InkWell(
                  onTap: () {
                    bodyExpansionProvider.toggleExpanded();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xffF3CC64),
                            radius: 20,
                            child: Icon(
                              Icons.charging_station_rounded,
                              color: Color(0xff202124),
                            ),
                          ),
                          title: Text(
                            'Party to attend',
                            style: TextStyle(fontSize: screenHeight * 0.021),
                          ),
                          trailing: Text(
                            '3h ago',
                            style: TextStyle(
                                fontSize: screenHeight * 0.014,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        if (bodyExpansionProvider.isExpanded)
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.026,
                              vertical: screenHeight * 0.001,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.04),
                                  child: Divider(),
                                ),
                                SizedBox(height: screenHeight * 0.015),
                                Row(
                                  children: [
                                    Icon(Icons.location_pin,
                                        size: screenHeight * 0.020),
                                    SizedBox(width: screenWidth * 0.018),
                                    const Text('Leave Date: 2nd April (1 Day)'),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.006),
                                Row(
                                  children: [
                                    Icon(Icons.person,
                                        size: screenHeight * 0.021),
                                    SizedBox(width: screenWidth * 0.018),
                                    const Text('Requested by: Labis Ac'),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.006),
                                Row(
                                  children: [
                                    Icon(Icons.attach_file,
                                        size: screenHeight * 0.020),
                                    SizedBox(width: screenWidth * 0.018),
                                    const Text(
                                        'Files Attached: Doctor_Appointment.pdf'),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.028),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
