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
                  child: Row(
                    children: [
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(item.image),
                            radius: 24.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    // const SizedBox(width: 150.0),
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(item.name),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '${item.range}km',
                          style: TextStyle(
                              color: Colors.grey.shade500, fontSize: 12),
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          item.status,
                          style: TextStyle(
                              color: Colors.grey.shade500, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
