import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '/src/modules/feed/domain/entities/feed_entity.dart';

class FeedTile extends StatelessWidget {
  final FeedEntity item;

  const FeedTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () => Modular.to.pushNamed('/feed/detail', arguments: item),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
        child: Row(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 32.0,
                  child: Row(
                    children: [Image.network(item.image)],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: const [
                      Text('Data'),
                      Text('Data'),
                      Text('Data'),
                      Text('Data'),
                    ],
                  ),
                ),
                // Row(
                //   children: [
                //     SizedBox(
                //       child: CircleAvatar(
                //         backgroundImage: NetworkImage(item.image),
                //         radius: 30.0,
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: Text(
                //         item.name,
                //         style: const TextStyle(
                //           fontWeight: FontWeight.w400,
                //           fontSize: 16.0,
                //         ),
                //       ),
                //     ),
                //     const Spacer(),
                //     IconButton(
                //       onPressed: () {},
                //       icon: const Icon(
                //         Icons.favorite_outline_sharp,
                //         size: 20.0,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Text('Data'),
                      Text('Data'),
                      Text('Data'),
                      Text('Data'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
