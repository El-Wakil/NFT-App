import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nti/screens/collection_screen.dart';
import 'package:nti/screens/details_screen.dart';
import 'package:nti/shared/styles/colors.dart';
import 'package:nti/shared/components.dart';
import 'package:nti/shared/styles/styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerBuilder(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: defaultFloatingButton(
                        function: () {},
                        text: 'Trending',
                        color: Color(0xffA3D80D),
                        fontSize: 12.7,
                        bordRaduis: 30.0,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: defaultFloatingButton(
                        function: () {},
                        text: 'By Artist',
                        color: Colors.grey[400],
                        fontSize: 13.0,
                        bordRaduis: 25,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: defaultFloatingButton(
                        function: () {},
                        text: 'ETH',
                        color: Colors.grey[400],
                        fontSize: 13.0,
                        bordRaduis: 25.0,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: defaultFloatingButton(
                        function: () {},
                        text: 'BTC',
                        color: Colors.grey[400],
                        fontSize: 13.0,
                        bordRaduis: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'Top Collection  🔥',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  SvgPicture.asset('assets/icons/Icon.svg',
                      width: 25.0,
                      height: 25.0,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  height: 250.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25.0),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/image1.png'),),
                    ),
                  ),
                ),
              apesInfoBuilder(),
              myDivider(),
              bidBuilder(),
              Row(
                children: [
                  Text(
                    'Best Artist',
                    style: titleStyle,
                  ),
                  Spacer(),
                  SvgPicture.asset('assets/icons/Icon.svg', width: 25.0),
                ],
              ),
              bestArtistBuilder()
            ],
          ),
        ),
      );
  }
  Widget bestArtistBuilder()=>Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: InkWell(
      onTap: (){
        navigateTo(context, CollectionScreen());
      },
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://cdn.prod.www.spiegel.de/images/d2caafb1-70da-47e2-ba48-efd66565cde1_w1024_r0.9975262832405689_fpx44.98_fpy48.86.jpg',
            ),
          ),
          SizedBox(width: 15.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pablo Escobar',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text('127k Followers',
                style:TextStyle(
                  color: greyD,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ) ,
              ),
            ],
          ),
          Spacer(),
          defaultFloatingButton(function: (){},
            text: 'Follow',
            color: green,
            fontSize: 17.0,
            width: 120.0,
          ),
        ],
      ),
    ),
  );
  Widget bidBuilder()=>Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Highest Bid Today',
              style:hashStyle,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/icon1.svg',
                  width: 25.0,
                  height: 25.0,
                ),
                Text(
                  '2.23 ETH',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        defaultElevatedButton(
          icon: Icons.gavel,
          function: () {
            navigateTo(context, DetailsScreen());
          },
          text: ' Place Bid',
        ),
      ],
    ),
  );
  Widget apesInfoBuilder()=>Row(
    children: [
      Text(
        'Hypebest Apes G',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
      ),
      Spacer(),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('Ends in',
            style:TextStyle(
              color: greyD,
              fontSize: 17.0,
              fontWeight: FontWeight.w500,
            ) ,                    ),
          Row(
            children: [
              Icon(Icons.watch_later_outlined),
              SizedBox(width: 15.0),
              Text('1h 23m 32s'),
            ],
          ),
        ],
      ),
    ],
  );
  Widget headerBuilder()=>Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(
            'Selling the ',
            style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
          ),
          Text(
            'MOST POPULAR',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: green,
            ),
          ),
        ],
      ),
      Text(
        'NFT is only here',
        style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
