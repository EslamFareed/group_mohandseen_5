import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});

  List<String> categories = [
    "Cat",
    "Dog",
    "Lion",
    "Tiger",
    "Cat",
    "Dog",
    "Lion",
    "Tiger",
    "Cat",
    "Dog",
    "Lion",
    "Tiger",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Email :",
                style: TextStyle(fontFamily: "Jersey"),
              ),
              Expanded(
                child: TextField(),
              ),
              // Expanded(
              //   flex: 3,
              //   child: Image.asset(
              //     "assets/images/image.jpg",
              //     // height: 150,
              //   ),
              // ),
              // Expanded(
              //   flex: 2,
              //   child: Image.asset(
              //     "assets/images/image.jpg",
              //     // height: 150,
              //   ),
              // ),
            ],
          )
        ],
      ),

      // body: Column(
      //   children: [
      //     SizedBox(
      //       height: 50,
      //       child: ListView.builder(
      //         scrollDirection: Axis.horizontal,
      //         itemBuilder: (context, index) {
      //           return Container(
      //             padding: const EdgeInsets.all(10),
      //             margin: const EdgeInsets.all(5),
      //             alignment: Alignment.center,
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(16),
      //               border: Border.all(color: Colors.deepOrange),
      //             ),
      //             child: Text(categories[index]),
      //           );
      //         },
      //         itemCount: categories.length,
      //       ),
      //     ),
      //     Expanded(
      //       child: GridView.builder(
      //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 2,
      //           childAspectRatio: 2 / 1,
      //         ),
      //         itemBuilder: (context, index) {
      //           return Card(
      //             child: ListTile(
      //               title: Text(categories[index]),
      //               subtitle: const Text("Click to view details"),
      //               leading: const Icon(Icons.dashboard),
      //               trailing: const Icon(Icons.arrow_forward_ios),
      //             ),
      //           );
      //         },
      //         itemCount: categories.length,
      //       ),
      //     ),
      //   ],
      // ),

      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       SizedBox(
      //         height: 50,
      //         child: ListView.builder(
      //           scrollDirection: Axis.horizontal,
      //           itemBuilder: (context, index) {
      //             return Container(
      //               padding: const EdgeInsets.all(10),
      //               margin: const EdgeInsets.all(5),
      //               alignment: Alignment.center,
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(16),
      //                 border: Border.all(color: Colors.deepOrange),
      //               ),
      //               child: Text(categories[index]),
      //             );
      //           },
      //           itemCount: categories.length,
      //         ),
      //       ),
      //       GridView.builder(
      //         physics: const NeverScrollableScrollPhysics(),
      //         shrinkWrap: true,
      //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 2,
      //           childAspectRatio: 2 / 1,
      //         ),
      //         itemBuilder: (context, index) {
      //           return Card(
      //             child: ListTile(
      //               title: Text(categories[index]),
      //               subtitle: const Text("Click to view details"),
      //               leading: const Icon(Icons.dashboard),
      //               trailing: const Icon(Icons.arrow_forward_ios),
      //             ),
      //           );
      //         },
      //         itemCount: categories.length,
      //       ),
      //     ],
      //   ),
      // ),

      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     childAspectRatio: 2 / 1,
      //     // mainAxisSpacing: 10,
      //     // crossAxisSpacing: 50,
      //   ),
      //   children: [
      //     Text(
      //       "Hello Hello Hello Hello Hello Hello",
      //       // style: TextStyle(fontSize: 50),
      //     ),
      //     Image.asset(
      //       "assets/images/image.jpg",
      //       fit: BoxFit.cover,
      //     ),
      //     Image.asset(
      //       "assets/images/image.jpg",
      //       fit: BoxFit.cover,
      //     ),
      //     Image.asset(
      //       "assets/images/image.jpg",
      //       fit: BoxFit.cover,
      //     ),
      //     Image.asset(
      //       "assets/images/image.jpg",
      //       fit: BoxFit.cover,
      //     ),
      //     Image.asset(
      //       "assets/images/image.jpg",
      //       fit: BoxFit.cover,
      //     ),
      //     Image.asset(
      //       "assets/images/image.jpg",
      //       fit: BoxFit.cover,
      //     ),
      //     Image.asset(
      //       "assets/images/image.jpg",
      //       fit: BoxFit.cover,
      //     ),
      //   ],
      // ),

      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //     Image.asset("assets/images/image.jpg"),
      //     Image.asset("assets/images/image.jpg"),
      //     Image.asset("assets/images/image.jpg"),
      //     Image.asset("assets/images/image.jpg"),
      //     Image.asset("assets/images/image.jpg"),
      //     Image.asset("assets/images/image.jpg"),
      //     Image.asset("assets/images/image.jpg"),
      //     Image.asset("assets/images/image.jpg"),
      //   ],
      // ),
    );
  }
}
