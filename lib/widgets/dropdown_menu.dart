// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// class DropdownMenuWidget extends StatelessWidget {
//   final List items;
//   const DropdownMenuWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
//
// class DropdownMenuWidget extends StatefulWidget {
//   const DropdownMenuWidget({Key? key,required this.items}) : super(key: key);
//
//   @override
//   State<DropdownMenuWidget> createState() => _DropdownMenuState();
// }
//
// class _DropdownMenuState extends State<DropdownMenuWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton(items: items.map((item) =>
//         DropdownMenuItem(child: Text(item), value: item)).toList()
//       ,
//       value: selectedItem,
//       onChanged: (item) => setState(() => selectedItem = item as String?),);
//   }
// }
