import 'package:flutter/material.dart';

class RequestClarificionDialog extends StatelessWidget {
  const RequestClarificionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      color: Color(0xff026EC1),
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.046,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.035),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("SEND CLARIFICATION MESSAGE",
                    style: TextStyle(
                        fontSize: height * 0.023,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.035),
            child: Container(
              height: height * 0.15,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(13)),
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  TextFormField(
                    maxLines: 2,
                    decoration: InputDecoration(
                      hintText:
                          'Hi sanjaya! Please add some supporting docs so we can grant you a leave for x days.',
                      border: InputBorder.none,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.010,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Icon(Icons.insert_emoticon),
                        SizedBox(width: width*0.013,),
                        Icon(Icons.alternate_email),
                        SizedBox(width: width*0.013,),
                        Icon(Icons.link),
                        SizedBox(width: width*0.59,),


                        Icon(Icons.send,size: height*0.026,color: Color(0xff193297),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
