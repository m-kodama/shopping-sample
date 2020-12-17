import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ShopItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CachedNetworkImage(
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                placeholder: (context, url) => CircularProgressIndicator(),
                imageUrl: 'https://picsum.photos/seed/random_value3/100',
              ),
              Container(
                width: 64,
                height: 20,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(16),
                    // bottomRight: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                ),
                child: Center(
                  child: Text(
                    'セール中',
                    style: Theme.of(context).textTheme.overline.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          letterSpacing: 0,
                        ),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Firebell Chinnamn Whisky',
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  '￥3,950',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
