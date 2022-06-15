// ignore_for_file: file_names

import 'dart:io';
import 'package:autisure/utilis/themes.dart';
import 'package:flutter/material.dart';

Future<bool> showExitPopup(context) async {
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AutiTheme.primary,
          content: SizedBox(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Do you want to exit?",
                  style: TextStyle(color: AutiTheme.white, fontSize: 20),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          exit(0);
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            side:
                                BorderSide(width: 2.0, color: AutiTheme.white),
                            primary: AutiTheme.primary
                        ),
                        child: Text(
                          "Yes",
                          style: TextStyle(color: AutiTheme.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: AutiTheme.white,
                        elevation: 0
                      ),
                      child: const Text("No",
                          style: TextStyle(color: Colors.black)),
                    ))
                  ],
                )
              ],
            ),
          ),
        );
      });
}
