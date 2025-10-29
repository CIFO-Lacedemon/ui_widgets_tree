import 'package:flutter/material.dart';
import 'package:ui_widgets_tree/class/accommodation.dart';

class Apartment extends StatelessWidget {
  final Accommodation alojamiento;
  const Apartment({super.key, required this.alojamiento});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          color: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(width: 200, height: 200, color: Colors.amber),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(width: 18, height: 18, color: Colors.pink),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(width: 120, height: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  alojamiento.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(alojamiento.nights.toString()),
              Text(alojamiento.hostType.toString()),
            ],
          ),
        ),
      ],
    );
  }
}
