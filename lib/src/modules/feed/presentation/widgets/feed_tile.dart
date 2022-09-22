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
      child: SizedBox(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(item.image), radius: 24.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(item.name),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.favorite_border),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
