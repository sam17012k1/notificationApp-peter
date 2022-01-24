import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'exam_info.dart';

class Following extends StatefulWidget {
  const Following({Key? key}) : super(key: key);

  @override
  _FollowingState createState() => _FollowingState();
}




class _FollowingState extends State<Following> {
  final style = const TextStyle(fontSize: 15,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ExamInfo()));},
              child: Container(
                padding: const EdgeInsets.fromLTRB(10,10,10,0),
                height: 80,
                width: double.maxFinite,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FadeInImage.assetNetwork(
                        alignment: Alignment.topCenter, // add this
                        placeholder: 'dummyImage',
                        image: 'https://via.placeholder.com/500x300.png',
                        fit: BoxFit.fitWidth,
                      ),
                      Expanded(child : Center(child: Text('UPSC 2022', style: GoogleFonts.poppins(textStyle: style,),))),
                    ],
                  ),
                  elevation: 5,
                  color: Colors.grey[300],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10,10,10,0),
              height: 80,
              width: double.maxFinite,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FadeInImage.assetNetwork(
                      alignment: Alignment.topCenter, // add this
                      placeholder: 'dummyImage',
                      image: 'https://via.placeholder.com/500x300.png',
                      fit: BoxFit.fitWidth,
                    ),
                    Expanded(child : Center(child: Text('UPSC 2022', style: GoogleFonts.poppins(textStyle: style,),))),
                  ],
                ),
                elevation: 5,
                color: Colors.grey[300],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10,10,10,0),
              height: 80,
              width: double.maxFinite,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FadeInImage.assetNetwork(
                      alignment: Alignment.topCenter, // add this
                      placeholder: 'dummyImage',
                      image: 'https://via.placeholder.com/500x300.png',
                      fit: BoxFit.fitWidth,
                    ),
                    Expanded(child : Center(child: Text('UPSC 2022', style: GoogleFonts.poppins(textStyle: style,),))),
                  ],
                ),
                elevation: 5,
                color: Colors.grey[300],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10,10,10,0),
              height: 80,
              width: double.maxFinite,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FadeInImage.assetNetwork(
                      alignment: Alignment.topCenter, // add this
                      placeholder: 'dummyImage',
                      image: 'https://via.placeholder.com/500x300.png',
                      fit: BoxFit.fitWidth,
                    ),
                    Expanded(child : Center(child: Text('UPSC 2022', style: GoogleFonts.poppins(textStyle: style,),))),
                  ],
                ),
                elevation: 5,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
