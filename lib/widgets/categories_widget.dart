import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
































// class TopMenus extends StatefulWidget {
//   const TopMenus({super.key});

//   @override
//   TopMenusState createState() => TopMenusState();
// }

// class TopMenusState extends State<TopMenus> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           TopMenuTiles(name: "Burger", imageUrl: "1", slug: ""),
//           TopMenuTiles(name: "Sushi", imageUrl: "2", slug: ""),
//           TopMenuTiles(name: "Pizza", imageUrl: "3", slug: ""),
//           TopMenuTiles(name: "Cake", imageUrl: "4", slug: ""),
//           TopMenuTiles(name: "Ice Cream", imageUrl: "5", slug: ""),
//           TopMenuTiles(name: "Soft Drink", imageUrl: "6", slug: ""),
//           TopMenuTiles(name: "Burger", imageUrl: "7", slug: ""),
//           TopMenuTiles(name: "Sushi", imageUrl: "3", slug: ""),
//         ],
//       ),
//     );
//   }
// }

// // ignore: must_be_immutable
// class TopMenuTiles extends StatefulWidget {
//   String name;
//   String imageUrl;
//   String slug;

//   TopMenuTiles(
//       {super.key,
//       required this.name,
//       required this.imageUrl,
//       required this.slug});

//   @override
//   State<TopMenuTiles> createState() => _TopMenuTilesState();
// }

// class _TopMenuTilesState extends State<TopMenuTiles> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {},
//       child: Column(
//         children: <Widget>[
//           Container(
//             // color: Colors.white,
//             width: 100,
//             height: 100,
//             // padding:
//             //     const EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
//             decoration: const BoxDecoration(boxShadow: [
//               BoxShadow(
//                 color: Colors.red,
//                 spreadRadius: 2.0,
//                 blurRadius: 10,
//                 offset: Offset(5.0, 5.0),
//               ),
//             ]),
//             child: Card(
//                 color: Colors.white,
//                 elevation: 0,
//                 shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(3.0),
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       // ignore: prefer_interpolation_to_compose_strings
//                       'assets/icons/' + widget.imageUrl + ".png",
//                       width: 50,
//                       height: 50,
//                     ),
//                     Text(widget.name,
//                         style: const TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400)),
//                   ],
//                 )),
//           ),
//         ],
//       ),
//     );
//   }
// }
