import 'package:flutter/material.dart';

import '../model/service/attendance.dart';
import 'attendancedate.dart';
import 'homescreen.dart';
import 'sickleave.dart';

class AttendanceReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
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
            title: const Text(
              'Attendance Report',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.picture_as_pdf,
                  color: Colors.white,
                ),
              )
            ]),
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
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.01),
              Text(
                ' ${attendance.name}',
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: screenHeight * 0.025),
              Row(
                children: [
                  Container(
                      width: 64,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      child: const Center(
                          child: Text(
                        '7 days',
                        style: TextStyle(fontSize: 15),
                      ))),
                  SizedBox(width: screenWidth * 0.028),
                  Container(
                    width: screenWidth * 0.15,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    child: const Center(
                        child: Text(
                      '14 days',
                      style: TextStyle(fontSize: 15),
                    )),
                  ),
                  SizedBox(width: screenWidth * 0.028),
                  Container(
                    width: screenWidth * 0.16,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    child: const Center(
                        child: Text(
                      '1 Month',
                      style: TextStyle(fontSize: 15),
                    )),
                  ),
                  const Spacer(),
                  Container(
                    height: screenHeight * 0.027,
                    width: screenWidth * 0.23,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                                height: screenHeight * 0.44,
                                decoration:
                                    BoxDecoration(color: Color(0xff14143C)),
                                child: AlertDialogDetail());
                          },
                        );
                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.filter_alt_outlined, size: 20),
                          SizedBox(width: 5),
                          Center(
                              child: Text(
                            'Filter',
                            style: TextStyle(fontSize: 15),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.calendar_month,
                        color: Colors.white, size: 20),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                  Text(
                    'Office Working Days: ${attendance.daysPresent + attendance.daysAbsent}',
                    style: const TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(Icons.check, color: Colors.white, size: 20),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                  Text(
                    'Days Present: ${attendance.daysPresent}',
                    style: const TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(Icons.close, color: Colors.white, size: 20),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                  Text(
                    'Days Absent: ${attendance.daysAbsent}',
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.access_time,
                        color: Colors.white, size: 20),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                  Text(
                    'Days Absent: ${attendance.daysAbsent}',
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
        
              SizedBox(height: screenHeight * 0.04),
              const attandancedate()
            ],
          ),
        ));
  }
}
