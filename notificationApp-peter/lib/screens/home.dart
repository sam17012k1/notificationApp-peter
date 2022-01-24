import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:never_miss_an_update/model/get_Notification.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:never_miss_an_update/screens/search_results.dart';

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://3a178515-5a1f-4da4-b47b-b9e825f92625.mock.pstmn.io/getNotification/'));
  print(response.statusCode);
  if (response.statusCode == 200) {
    print(response.body);
    return Album.fromJson(jsonDecode(response.body));
  } else {

    throw Exception('Failed to load album');
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool typing = false;
  final style = const TextStyle(fontSize: 15,);

  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: typing ? const TextBox() : GestureDetector(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
    },child: Text("Search", style: GoogleFonts.poppins(textStyle: style,fontSize: 20),)),
              leading: IconButton(
              icon: Icon(typing ? Icons.done : Icons.search),
              onPressed: () {
              setState(() {
              typing = !typing;
              });
              },
              ),
              bottom: TabBar(
              tabs: [
              Tab(child: Text('Your Notification', style: GoogleFonts.poppins(textStyle: style),),),
              Tab(child: Text
                ('Latest News', style: GoogleFonts.poppins(textStyle: style),),)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FutureBuilder<Album>(
                future: futureAlbum,
                builder: (context, snapshot){
                  if(snapshot.hasData){
                    // for(String item in snapshot.data!.ticker){
                    //   return Text(item);
                    // }
                    int len = snapshot.data!.ticker.length;
                    for(int i=0;i<len;i++){
                      return Text(snapshot.data!.ticker[i]);
                    }
                    return Text(snapshot.data!.ticker);
                  }else if(snapshot.hasError){
                    return Text('${snapshot.error}');
                  }
                  else{
                    return const CircularProgressIndicator();
                  }
                }
              ),
              Icon(Icons.ac_unit_sharp),
            ],
          ),
        ),
    );
  }
}

class TextBox extends StatelessWidget {
  const TextBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: 'Search...',
          )),
    );
  }
}