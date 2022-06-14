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
              children: [
                Text(
                  "Do you want to exit?",
                  style: TextStyle(color: AutiTheme.white),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          exit(0);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: AutiTheme.primary.withAlpha(900),
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
