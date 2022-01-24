import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Me extends StatefulWidget {
  const Me({Key? key}) : super(key: key);

  @override
  _MeState createState() => _MeState();
}

class _MeState extends State<Me> {
  final style = const TextStyle(fontSize: 15,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              SizedBox(
                height: 220,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/main.png'),
                      radius: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Aditya Singh', style: GoogleFonts.poppins(textStyle: style),),
                        Text('Bio Here', style: GoogleFonts.poppins(textStyle: style),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(onPressed: () {}, child: Text(
                                'Edit Profile',
                              style: GoogleFonts.poppins(textStyle: style),
                            )),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            Center(
              child: Text(
                  'Add or Remove Topics',
                style: GoogleFonts.poppins(textStyle: style,fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
              child: SizedBox(
                height: 50,
                child: Card(
                  color: Colors.grey[300],
                  shadowColor: Colors.grey[300],
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Text('Topic 1', style: GoogleFonts.poppins(textStyle: style,fontSize: 18),))),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.delete_outline)),
                    ],
                  ),
                  elevation: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
              child: SizedBox(
                height: 50,
                child: Card(
                  color: Colors.grey[300],
                  shadowColor: Colors.grey[300],
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Text('Topic 2', style: GoogleFonts.poppins(textStyle: style,fontSize: 18),))),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.delete_outline)),
                    ],
                  ),
                  elevation: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
              child: SizedBox(
                height: 50,
                child: Card(
                  color: Colors.grey[300],
                  shadowColor: Colors.grey[300],
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Text('Topic 3', style: GoogleFonts.poppins(textStyle: style,fontSize: 18),))),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.delete_outline)),
                    ],
                  ),
                  elevation: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
              child: SizedBox(
                height: 50,
                child: Card(
                  color: Colors.grey[300],
                  shadowColor: Colors.grey[300],
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Text('Topic 4', style: GoogleFonts.poppins(textStyle: style,fontSize: 18),))),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.delete_outline)),
                    ],
                  ),
                  elevation: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
