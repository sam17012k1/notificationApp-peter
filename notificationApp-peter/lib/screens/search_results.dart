import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'exam_info.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white54,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        centerTitle: true,
        elevation: 0.0,
        title: const Text("Search",style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color(0xff5db075)),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(

          children:<Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              width: 350,
              child: Text(
                ' Uceed\'22',style: TextStyle(fontSize: 17.0,color: Colors.grey),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: Color(0xffE8E8E8),

              ),
            ),
            SearchList(),

        ]
        ),
      ),
    );
  }
}

class Exam{
  String exam;
  String date;
  Exam({required this.exam,required this.date});
}

class SearchList extends StatefulWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  int selectedtime = 0;
  List<Exam> exams = [
    Exam(exam: 'NEET',date: 'JAN 26'),
    Exam(exam: 'NEET',date: 'JAN 26'),
    Exam(exam: 'NEET',date: 'JAN 26'),
    Exam(exam: 'NEET',date: 'JAN 26'),
    Exam(exam: 'NEET',date: 'JAN 26'),
    Exam(exam: 'NEET',date: 'JAN 26'),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: exams.length,
        itemBuilder: (context,index){
          return Container(
              decoration: const BoxDecoration(

                border: Border(bottom: BorderSide(color: Colors.black12)),
              ),child: eventCard(index,context));
        },
      ),
    );
  }

  Container eventCard(int index,BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),


      //color: Color(0xff5db075),
      child: Row(
        children: [
          Container(

            height: 30,
            width: 50,
            padding: EdgeInsets.fromLTRB(7.0, 8.0, 0, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xff5db075)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(exams[index].exam,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                //Text(events[index].date,style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(exams[index].date,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                //Text("Link: " + [index].link,style: TextStyle(color: Colors.black12),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

