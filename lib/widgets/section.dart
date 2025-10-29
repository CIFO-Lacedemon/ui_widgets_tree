import 'package:flutter/material.dart';
import 'package:ui_widgets_tree/class/accommodation.dart';
import 'package:ui_widgets_tree/widgets/apartment.dart';

class Section extends StatelessWidget {
  final List<Accommodation> alojamientos;
  final String title;
  const Section({super.key, required this.alojamientos, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.only(left: 10), child: Text(title)),
        SizedBox(
          height: 300,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: alojamientos.length,
            itemBuilder: (context, index) {
              return Apartment(alojamiento: alojamientos[index]);
            },
          ),
        ),
      ],
    );
  }
}
