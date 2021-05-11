import 'package:firevote/models/DisplayedMallData.dart';
import 'package:firevote/CustomWidgets/LocationTile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LocationList extends StatefulWidget {
  @override
  _LocationListState createState() => _LocationListState();
}

class _LocationListState extends State<LocationList> {
  @override
  Widget build(BuildContext context) {
    final malls = Provider.of<List<DisplayedMallData> >(context) ?? [];
    malls.forEach((mall) {
      print (mall.name);
      print (mall.location);
      print (mall.capacity);
      print (mall.maxCapacity);
    });
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: malls.length,
      itemBuilder: (context, index){
        return LocationTile(mall: malls[index]);
      },
    );
    return Text ('hello');
  }
}
