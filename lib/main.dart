import 'package:flutter/material.dart';

void main() {
  runApp( PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoints= 0;

  int teamBpoints= 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title:const Text("Points Counter"),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                  const  Text(
                      "Team A",
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                 Text(
                  "$teamApoints",
                  style: const TextStyle(
                    fontSize: 112,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    fixedSize: const Size(162, 53),
                  ),
                  onPressed: (){
                      setState(() {
                       teamApoints++;
                    });
                  },
                 child:const Text("add 1 point",
                 style: TextStyle(
                  color:Colors.black,
                  fontSize: 22,
                 ),
                 ),
                 ),
                 const SizedBox(height: 20),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    fixedSize: const Size(162, 53),
                  ),
                  onPressed: (){
                      setState(() {
                       teamApoints+=2;
                    });
                  },
                 child:const Text("add 2 point",
                 style: TextStyle(
                  color:Colors.black,
                  fontSize: 22,
                 ),
                 ),
                 ),
                const SizedBox(height: 20),
                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    fixedSize: const Size(162, 53),
                  ),
                  onPressed: (){
                      setState(() {
                       teamApoints+=3;
                    });
                  },
                 child: const Text("add 3 point",
                 style: TextStyle(
                  color:Colors.black,
                  fontSize: 22,
                 ),
                 ),
                 ),
                      
                  ],
                ),
                   Container(
                    height: 500,
                     child: const VerticalDivider(
                      color:Colors.blueGrey,
                      indent: 50,
                      endIndent: 40,
                     ),
                   ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                 Text(
                  "$teamBpoints",
                  style:const TextStyle(
                    fontSize: 112,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    fixedSize:const Size(162, 53),
                  ),
                  onPressed: (){
                    setState(() {
                       teamBpoints++;
                    });
                  },
                 child: const Text("add 1 point",
                 style: TextStyle(
                  color:Colors.black,
                  fontSize: 22,
                 ),
                 ),
                 ),
                 const SizedBox(height: 20),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    fixedSize:const Size(162, 53),
                  ),
                  onPressed: (){
                      setState(() {
                       teamBpoints+=2;
                    });
                  },
                 child: const Text("add 2 point",
                 style: TextStyle(
                  color:Colors.black,
                  fontSize: 22,
                 ),
                 ),
                 ),
                const SizedBox(height: 20),
                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    fixedSize: const Size(162, 53),
                  ),
                  onPressed: (){
                      setState(() {
                       teamBpoints+=3;
                    });
                  },
                 child: const Text("add 3 point",
                 style: TextStyle(
                  color:Colors.black,
                  fontSize: 22,
                 ),
                 ),
                 ),
                      
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
             ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                fixedSize:const Size(162, 53),
              ),
              onPressed: (){
                  setState(() {
                       teamApoints=0;
                       teamBpoints=0;
                    });
              },
             child:const Text("Reset",
             style: TextStyle(
              color:Colors.black,
              fontSize: 22,
             ),
             ),
             ),
          ],
        ),
        
      ),
    );
  }
}
