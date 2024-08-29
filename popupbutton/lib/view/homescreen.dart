import 'package:flutter/material.dart';

import 'attendancedate.dart';


class AlertDialogDetail extends StatelessWidget {
  const AlertDialogDetail({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
     
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.022,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: Text(
                  "FILTER",
                  style: TextStyle(
                    fontSize: height * 0.020,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffF8F9FA),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: height * 0.354,
              width: width * 0.96,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.009,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: width * 0.015,
                      ),
                      Text(
                        "User's Name",
                        style: TextStyle(
                            fontSize: height * 0.020, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Container(
                    height: height * 0.069,
                    width: width * 0.96,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "eg.sanjaya thapa",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.010,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "From Date",
                            style: TextStyle(
                                fontSize: height * 0.020, color: Colors.white),
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Container(
                            height: height * 0.069,
                            width: width * 0.46,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "2024-04-20",
                                suffixIcon: Icon(Icons.calendar_month),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 16
                                  
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.023,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "To Date",
                            style: TextStyle(
                                fontSize: height * 0.020, color: Colors.white),
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Container(
                            height: height * 0.069,
                            width: width * 0.46,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "2024-07-19",
                                suffixIcon: Icon(Icons.calendar_month),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 16
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
               InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> attandancedate()));
                    },
                     child: Container(
                    height: height * 0.069,
                    width: width * 0.96,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF8F9FA)),
                    child: Center( 
                      
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          fontSize: height * 0.020,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff202124),
                        ),
                      ),
                    ),
                  ), 
                  )
               
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}