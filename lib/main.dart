 import 'package:flutter/material.dart';

void main() {
  runApp( const Basketball_points_counter());
}

 //////////////////////////////////Basketball Points counter //////////////////////
 class Basketball_points_counter extends StatefulWidget {
  const Basketball_points_counter({super.key});

   @override
   State<Basketball_points_counter> createState() =>
       _Basketball_points_counterState();
 }

 class _Basketball_points_counterState extends State<Basketball_points_counter> {
   int teamAPoints = 0;
   int teamBPoints = 0;

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           title: const Center(
             child: Text(
               'Points Counter',
               style: TextStyle(
                 color: Colors.black,
                 fontWeight: FontWeight.bold,
                 fontSize: 30,
               ),
             ),
           ),
           backgroundColor: Colors.teal,
         ),
         body: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Container(
                   height: 450,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       const Text(
                         'Team A',
                         style: TextStyle(
                           fontSize: 25,
                           color: Colors.black,
                         ),
                       ),
                       Text(
                         '$teamAPoints',
                         style: const TextStyle(
                           fontSize: 90,
                           color: Colors.black,
                         ),
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.teal,
                           minimumSize: const Size(120, 50),
                         ),
                         onPressed: () {
                           setState(() {
                             teamAPoints++;
                            // print(teamAPoints);
                           });
                         },
                         child: const Text('Add 1 Point',style: TextStyle(
                           color: Colors.black,
                           fontSize: 18,
                         ),),
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.teal,
                           minimumSize: const Size(120, 50),
                         ),
                         onPressed: () {
                           setState(() {
                             teamAPoints+=2;
                            // print(teamAPoints);
                           });
                         },
                         child: const Text('Add 2 Point',style: TextStyle(
                           color: Colors.black,
                           fontSize: 18,
                         ),),
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.teal,
                           minimumSize: const Size(120, 50),
                         ),
                         onPressed: () {
                           setState(() {
                             teamAPoints+=3;
                            // print(teamAPoints);
                           });
                         },
                         child: const Text('Add 3 Point',style: TextStyle(
                           color: Colors.black,
                           fontSize: 18,
                         ),),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   height: 450,
                   child: const VerticalDivider(
                     color: Colors.grey,
                     thickness: 1,
                     indent: 50,
                     endIndent: 50,
                   ),
                 ),
                 Container(
                   height: 450,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       const Text(
                         'Team B',
                         style: TextStyle(
                           fontSize: 25,
                           color: Colors.black,
                         ),
                       ),
                       Text(
                         '$teamBPoints',
                         style: const TextStyle(
                           fontSize: 90,
                           color: Colors.black,
                         ),
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.teal,
                           minimumSize: const Size(120, 50),
                         ),
                         onPressed: () {
                           setState(() {
                             teamBPoints++;
                            // print(teamBPoints);
                           });
                         },
                         child: const Text('Add 1 Point',style: TextStyle(
                           color: Colors.black,
                           fontSize: 18,
                         ),),
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.teal,
                           minimumSize: const Size(120, 50),
                         ),
                         onPressed: () {
                           setState(() {
                             teamBPoints+=2;
                            // print(teamBPoints);
                           });
                         },
                         child: const Text('Add 2 Point',style: TextStyle(
                           color: Colors.black,
                           fontSize: 18,
                         ),),
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.teal,
                           minimumSize: const Size(120, 50),
                         ),
                         onPressed: () {
                           setState(() {
                             teamBPoints+=3;
                             print(teamBPoints);
                           });
                         },
                         child: const Text('Add 3 Point',style: TextStyle(
                           color: Colors.black,
                           fontSize: 18,
                         ),),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
             ElevatedButton(
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.teal,
                 minimumSize: const Size(120, 50),
               ),
               onPressed: () {
                 setState(() {
                   teamAPoints=0;
                   teamBPoints=0;
                 });
               },
               child: const Text('Reset',style: TextStyle(
                 color: Colors.black,
                 fontSize: 18,
               ),),
             ),
           ],
         ),
       ),
     );
   }
 }