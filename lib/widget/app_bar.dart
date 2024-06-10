import 'dart:ffi';

import 'package:flutter/material.dart';

AppBar appBar(
    {required IconData iconData,
    required bool canBack,
    required BuildContext context}) {
  var audioVM;
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: TextField(
      onChanged: (value) => dispose(value),
      controller: audioVM,
    ),
    leading: GestureDetector(
      onTap: () {
        if (canBack == true) Navigator.pop(context);
      },
      child: Icon(iconData),
    ),
    actions: [
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Hello Nhom 9',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            ),
          ),
          // Text(
          //   'VietNam',
          //   style: TextStyle(fontSize: 7),
          // ),
        ],
      ),
      Padding(
        padding: EdgeInsets.only(right: 8, left: 15),
        child: Icon(
          Icons.notifications_active_outlined,
          size: 30,
        ),
      )
    ],
  );
}

dispose(String value) {
}
