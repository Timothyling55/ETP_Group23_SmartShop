import 'package:flutter/material.dart';
import 'package:firevote/models/DisplayedMallData.dart';

class LocationTile extends StatelessWidget {

  final DisplayedMallData mall;
  LocationTile({this.mall});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      child: ListTile(
        onTap: (){
          //print('pressed ${mall.name}');
          Navigator.pop (context, {'mall': mall.name});
        },
        title: Text(mall.name, style: TextStyle(fontSize: 20),),
        subtitle: Text("${mall.location}\t | Current occupancy: ${mall.capacity} | Max capacity: ${mall.maxCapacity}"),
      ),
    );
  }
}
