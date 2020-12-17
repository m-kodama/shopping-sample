import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ItemDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 220,
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                placeholder: (context, url) => CircularProgressIndicator(),
                imageUrl: 'https://picsum.photos/seed/random_value3/800',
              ),
            ),
            Container(
              width: double.infinity,
              // color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Firebell Chinnamn Whisky',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Firebell Chinnamn Whisky',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
