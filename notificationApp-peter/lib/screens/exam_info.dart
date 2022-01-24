import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExamInfo extends StatefulWidget {
  const ExamInfo({Key? key}) : super(key: key);

  @override
  _exam_infoState createState() => _exam_infoState();
}

class _exam_infoState extends State<ExamInfo> {


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
        title: const Text("Exam-Info",style: TextStyle(color: Colors.black),
         ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color(0xff5db075)),
      ),
      body:  Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
                Container(
                  child: Exam_Card(),
                  //color: Colors.grey,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              SizedBox(height: 10),
              Container(
                color: Colors.black,
                height: 2,
                width: 10,
                alignment: Alignment.center,
              ),

              SizedBox(height: 20,),
              Categorylist(),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                  child: Text('TIMELINE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),)),
              //SizedBox(height: 20,),
              TimelineList(),




            ],
          ),

      ),
    );
  }
}


Widget Exam_Card(){
  return Container(
      padding: EdgeInsets.all(5),
      //height: 30,
      //color: Colors.grey,
      decoration: BoxDecoration(
        color: Color(0xffE8E8E8).withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: <Widget>[
          Container(width: 100,
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset('assets/upsc.png',fit: BoxFit.cover,),
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(5.0),
                ),
          ),
              Text('UPSC 2022',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),)

            ],
          ),),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('About',style: TextStyle(fontWeight: FontWeight.bold),),
                Container(width: 150,child: Text('lsdlfj sdjfhkjshdf sjhfsdkjfhks jhfdksjdfhkjs kjhfkdjf djfhjdh jdj jhfjskd jhjfhdk',style: TextStyle(fontSize: 11),))
              ],
            ),
          )

        ],
      ),

  );
}



//Class for lis view of events and timeline
class Event{
  late String month;
  late String date;
  late String event;
  late String link;
  Event({required this.month,required this.date,required this.event,required this.link});

}

class TimelineList extends StatefulWidget {
  const TimelineList({Key? key}) : super(key: key);

  @override
  _TimelineListState createState() => _TimelineListState();
}

class _TimelineListState extends State<TimelineList> {
  int selectedtime = 0;
  List<Event> events = [
    Event(month: 'JAN',date: '26',event: 'Registration',link: 'https://www.google.come'),
    Event(month: 'FEB',date: '16',event: 'Registration Extended',link: 'https://www.google.come'),
    Event(month: 'MAR',date: '19',event: 'Document Verification',link: 'https://www.google.come'),
    Event(month: 'APR',date: '12',event: 'Admit Card',link: 'https://www.google.come'),
    Event(month: 'MAY',date: '25',event: 'EXAM',link: 'https://www.google.come'),
    Event(month: 'JAN',date: '26',event: 'Registration',link: 'https://www.google.come'),
    Event(month: 'FEB',date: '16',event: 'Registration Extended',link: 'https://www.google.come'),
    Event(month: 'MAR',date: '19',event: 'Document Verification',link: 'https://www.google.come'),
    Event(month: 'APR',date: '12',event: 'Admit Card',link: 'https://www.google.come'),
    Event(month: 'MAY',date: '25',event: 'EXAM',link: 'https://www.google.come'),
    Event(month: 'JAN',date: '26',event: 'Registration',link: 'https://www.google.come'),
    Event(month: 'FEB',date: '16',event: 'Registration Extended',link: 'https://www.google.come'),
    Event(month: 'MAR',date: '19',event: 'Document Verification',link: 'https://www.google.come'),
    Event(month: 'APR',date: '12',event: 'Admit Card',link: 'https://www.google.come'),
    Event(month: 'MAY',date: '25',event: 'EXAM',link: 'https://www.google.come'),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: events.length,
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

            height: 40,
            width: 40,
            padding: EdgeInsets.fromLTRB(4.0, 5.0, 0, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff5db075)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(events[index].month,style: TextStyle(color: Colors.white),),
                Text(events[index].date,style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(events[index].event,style: TextStyle(color: Color(0xff5db075),fontWeight: FontWeight.bold,fontSize: 15),),
                Text("Link: " + events[index].link,style: TextStyle(color: Colors.black12),)
              ],
            ),
          )
        ],
      ),
    );
  }
}



//Listview for the horizontally scrollable options menu
class Categorylist extends StatefulWidget {
  @override
  _CategorylistState createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  int selectedCategory = 0;
  List<String> categories = ["Timeline", "News", "Syllabus","Free Resources","libraries","books"];
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 4.0),
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      ),
    );
  }

  Container buildCategory(int index, BuildContext context) {
    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: index==selectedCategory? Colors.white : Color(0xffF6F6F6),
            border: Border.all(color: Colors.black12,width: 0.5)
          ),
          child:
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: index == selectedCategory
                      ? Color(0xff5db075)
                      : Colors.black.withOpacity(0.4),
                ),
              ),
            ),
        ),
      ),
    );
  }
}
