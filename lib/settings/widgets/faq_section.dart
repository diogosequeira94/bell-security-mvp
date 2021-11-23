import 'package:flutter/material.dart';

import 'section_header_widget.dart';

class FaqSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final listTilePadding = const EdgeInsets.symmetric(horizontal: 0.0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: 'F.A.Q'),
        ListTile(
          contentPadding: listTilePadding,
          title: Text('Quem somos'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
        ListTile(
          contentPadding: listTilePadding,
          title: Text('Como contactar'),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
        ListTile(
          contentPadding: listTilePadding,
          title: Text('Feedback'),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
        ListTile(
          contentPadding: listTilePadding,
          title: Text('Termos de Privacidade'),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
      ],
    );
  }
}
