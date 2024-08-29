import 'package:flutter/material.dart';
import 'package:popupbutton/view/sickleave.dart';

class attandancedate extends StatelessWidget {
  const attandancedate({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        child: Column(
      children: [
        Container(
          height: screenHeight * 0.08,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 20,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.sentiment_very_satisfied,
                        color: Colors.white,
                      ),
                    ),
                  )),
              Text(
                ' Monday, 13 May',
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Text('9:35 AM')
            ],
          ),
        ),
        SizedBox(height: screenHeight * 0.002),
        Container(
          height: screenHeight * 0.08,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 232, 201, 2),
                    radius: 21,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.watch,
                        color: Color.fromARGB(255, 252, 251, 250),
                      ),
                    ),
                  )),
              Text(
                'Sunday, 12 May',
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Text('11:35 AM')
            ],
          ),
        ),
        SizedBox(height: screenHeight * 0.002),
        Container(
          height: screenHeight * 0.08,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              Padding(
                  padding: EdgeInsets.all(7.0),
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 208, 1, 1),
                    radius: 20,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.sentiment_very_dissatisfied,
                        color: Colors.white,
                      ),
                    ),
                  )),
              Text(
                'Friday, 10 May',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        SizedBox(height: screenHeight * 0.002),
          Container(
          height: screenHeight * 0.08,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 55, 160, 247),
                    radius: 20,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CombinedScreen()),
                  );
                      },
                      icon: Icon(
                        Icons.sentiment_very_satisfied,
                        color: Colors.white,
                      ),
                    ),
                  )),
              Text(
                'BodyExpansion Example',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
