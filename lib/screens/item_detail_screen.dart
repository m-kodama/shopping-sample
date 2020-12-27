import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/color.dart';
import 'package:shopping_sample/widgets/add_cart_bottom_sheet.dart';
import 'package:shopping_sample/widgets/app_indicator.dart';
import 'package:shopping_sample/widgets/checkbox_tile.dart';

class ItemDetailScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments;
    final imageUrl = arguments is String ? arguments : null;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 220,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    placeholder: (context, url) => AppIndicator(),
                    imageUrl: imageUrl,
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                  ),
                  child: Container(
                    width: double.infinity,
                    // color: Colors.white,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            '【5人前】さみだれ（55貫）',
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Text(
                          '【期間限定】2022年3月14日（土）まで！マグロ・エビ・中トリ・ズワイガニ・'
                          'ウニ・アカガイ・ホタテ・キングサーモン・ネギトロ・玉子・アナゴ'
                          '\n※注意事項1注意事項1注意事項1'
                          '\n※注意事項2'
                          '\n※注意事項3注意事項3注意事項3注意事項3注意事項3注意事項3注意事項3',
                          style: Theme.of(context).textTheme.caption,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Center(
                            child: IconButton(
                          icon: const Icon(
                            Icons.expand_more,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        )),
                        const Divider(),
                        Text(
                          '￥3,950',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
                  child: Text('オプション',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontWeight: FontWeight.bold,
                          )),
                ),
                Card(
                  margin: const EdgeInsets.all(0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                  ),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        CheckboxTile(title: 'さび抜き'),
                        CheckboxTile(title: 'プラスチック容器'),
                        CheckboxTile(title: 'シャリ2倍'),
                        CheckboxTile(title: 'あきたこまち'),
                        CheckboxTile(title: 'ガリ5倍'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
                  child: Text('個数',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontWeight: FontWeight.bold,
                          )),
                ),
                Card(
                  margin: const EdgeInsets.all(0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                  ),
                  child: Container(
                    width: double.infinity,
                    // color: Colors.white,
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          color: AppColors.primaryColor,
                          icon: const Icon(
                            Icons.remove_circle_outline,
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Text(
                            '2',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        IconButton(
                          color: AppColors.primaryColor,
                          icon: const Icon(
                            Icons.add_circle_outline,
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Builder(builder: (context) {
        return AddCartBottomSheet(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(_scaffoldKey.currentState.context)
                .viewPadding
                .bottom,
          ),
        );
      }),
    );
  }
}
