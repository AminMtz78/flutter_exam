import 'package:flutter/material.dart';
import '../../models/item_view_model.dart';

class ShowItem extends StatelessWidget {
  const ShowItem({super.key, required this.item});

  final ItemViewModel item;

  @override
  Widget build(BuildContext context) => buildRow();

  Row buildRow() {
    return Row(
      children: [
        Column(
          children: [
            Text(item.name),
            const SizedBox(
              height: 4,
            ),
            Text('${item.price}')
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
        const SizedBox(
          height: 4,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.edit),
        )
      ],
    );
  }
}
