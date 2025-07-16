import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti/shared/styles/colors.dart';
import 'package:nti/shared/components.dart';
import 'package:nti/shared/styles/styles.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Detail',
        style: titleStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/Image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            nftsDetailsBuilder(),
            myDivider(),
            Text(
              'Description',
              style: titleStyle,
            ),
            Text(
              'Each Apes NFT is a unique masterpiece, and crafted by artists around the globe',
              style: hashStyle
            ),
            SizedBox(height: 25.0),
            priceBuilder(),
          ],
        ),
      ),
    );
  }

  Widget nftsDetailsBuilder() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '#14415',
        style: greenStyle,
      ),
      Row(
        children: [
          Text(
            'Hypebest Apes G',
            style: titleStyle,
          ),
          Spacer(),
          SvgPicture.asset(
            'assets/icons/icon3.svg',
            color: black,
            width: 30.0,
            height: 30.0,
          ),
          SizedBox(width: 20.0,)
        ],
      ),
      SizedBox(height: 10.0),
      Row(
        children: [
          Text(
            '125 Sold',
            style: hashStyle,
          ),
          SizedBox(width: 15.0),
          Icon(Icons.watch_later_outlined, size: 20.0),
          SizedBox(width: 10.0),
          Text(
            '1h 23m 32s',
            style: hashStyle,
          ),
        ],
      ),
    ],
  );
  Widget priceBuilder() => Padding(
    padding: const EdgeInsets.symmetric(vertical: 15.0),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price',
              style: hashStyle,
            ),
            Text(
              '2.23 ETH',
              style: titleStyle,
            ),
          ],
        ),
        Spacer(),
        Container(
          width: 180.0,
          height: 57,
          child: defaultElevatedButton(
            function: () {},
            icon: Icons.gavel,
            text: 'Place BId'

          ),
        ),
      ],
    ),
  );
}
