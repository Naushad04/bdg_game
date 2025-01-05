import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenWidgets{

  List<Map<String, String>> data = [
    {"Period": "20251204100010980", "Number": "2", "Big Small": "Small", "Color": "Red"},
  ];

  Widget gameHistoryLayout(){
    return Container(
      width: double.infinity,
      height:  400,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(1.8),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(1.5),
          3: FlexColumnWidth(1.0),
        },
        children: [
          TableRow(
            decoration: BoxDecoration(
                color: Color(0xFFeb6d21).withOpacity(0.8),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                )
            ),
            children: data.first.keys.map((key) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    key,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.white),
                  ),
                ),
              );
            }).toList(),
          ),
          ...data.map((row) {
            return TableRow(
              decoration: const BoxDecoration(
                color: Colors.yellow,
              ),
              children: row.values.map((value) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    value.toString(),
                    textAlign: TextAlign.justify,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: value.toString().length == 1 ?  22 : 12,
                    ),
                  ),
                );
              }).toList(),
            );
          }).toList(),
        ],
      ),
    );
  }

  Widget chartLayout(){
    return Container(
      width: double.infinity,
      height:  400,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text('Chart')
        ,
      ),
    );
  }

  Widget myHistoryLayout(){
    return Container(
      width: double.infinity,
      height:  400,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text('My Hostory')
        ,
      ),
    );
  }

}