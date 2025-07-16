// import 'package:dotted_line/dotted_line.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:nti/shared/components.dart';
// import 'package:nti/shared/styles/styles.dart';
//
// import '../shared/styles/colors.dart';
//
// class CollectionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(Icons.arrow_back_ios),
//           ),
//           title: Text('Collection', style: titleStyle),
//           centerTitle: true,
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               profileImageBuilder(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Pablo Escobar ', style: titleStyle),
//                   Icon(Icons.verified_rounded,
//                   color: Colors.blue,
//                   ),
//                 ],
//               ),
//               Text(
//                 'Each Apes NFT is a unique masterpiece, and crafted by artists around the globe',
//                 style: hashStyle,
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 15.0),
//               artistInfoBuilder(),
//               SizedBox(height: 15.0),
//               Row(
//                 children: [
//                   Expanded(
//                     child: defaultElevatedButton(
//                         function: (){},
//                         icon: Icons.add,
//                         text: 'Watchlist',
//                       color: green,
//                     ),
//                   ),
//                   SizedBox(width: 50.0,),
//                   SvgPicture.asset('assets/icons/Icon.svg',
//                     width: 25.0,
//                     height: 25.0,
//                   ),              ],
//               ),
//               TabBar(
//                 indicatorColor: green,
//                 indicatorWeight: 3,
//                 labelColor: green,
//                 unselectedLabelColor: greyD,
//                 labelStyle: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 tabs: [
//                   Tab(text: "Item's"),
//                   Tab(text: 'Activity'),
//                 ],
//               ),
//               Expanded(
//                 child: Container(
//                   color: greyW,
//                   child: TabBarView(
//                     children: [
//                       GridView.builder(
//                           gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 2,
//                             crossAxisSpacing: 10.0,
//                             mainAxisSpacing: 10.0,
//                           ) ,
//                           itemBuilder: (context,index){
//                             return Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(15.0),
//                               ),
//                               child: Stack(
//                                 alignment: AlignmentDirectional.bottomStart,
//                                 children: [
//                                   Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(15.0),
//                                       ),
//                                       child: Image(image: AssetImage('assets/images/Image.png'),)),
//                                   Text('#14415',
//                                   style: greenStyle,
//                                   ),
//                                   SizedBox(height: 20.0,),
//                                   Text('Hypebest Apes B ',
//                                   style: titleStyle,
//                                   ),
//                                 ],
//                               ),
//                             );
//                           },
//                         itemCount: 6,
//                       ),
//                     Tab(text: "Item's"),
//                     Tab(text: 'Activity'),
//                   ],),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget profileImageBuilder() => Padding(
//     padding: const EdgeInsets.all(15.0),
//     child: SizedBox(
//       height: 171.0,
//       child: Stack(
//         alignment: AlignmentDirectional.bottomCenter,
//         children: [
//           Align(
//             alignment: AlignmentDirectional.topCenter,
//             child: Container(
//               width: double.infinity,
//               height: 135.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15.0),
//                 image: DecorationImage(
//                   image: AssetImage('assets/images/cover.jpg'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//           CircleAvatar(
//             radius: 55.5,
//             backgroundColor: greyW,
//             child: CircleAvatar(
//               radius: 53.0,
//               backgroundImage: NetworkImage(
//                 'https://cdn.prod.www.spiegel.de/images/d2caafb1-70da-47e2-ba48-efd66565cde1_w1024_r0.9975262832405689_fpx44.98_fpy48.86.jpg',
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
//   Widget artistInfoBuilder() => Row(
//     children: [
//       Expanded(
//         child: Column(
//           children: [
//             Text('10.0K', style: titleStyle),
//             Text('Items', style: hashStyle),
//           ],
//         ),
//       ),
//       Container(
//         padding: EdgeInsets.only(right: 20.0),
//         height: 20.0,
//         child: DottedLine(direction: Axis.vertical, dashColor: greyD),
//       ),
//       Expanded(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 SvgPicture.asset(
//                   'assets/icons/icon1.svg',
//                   width: 25.0,
//                   height: 25.0,
//                 ),
//                 Text('689.10K', style: titleStyle),
//               ],
//             ),
//             Text('Volume', style: hashStyle),
//           ],
//         ),
//       ),
//       Container(
//         padding: EdgeInsets.symmetric(horizontal: 20.0),
//         height: 20.0,
//         child: DottedLine(direction: Axis.vertical, dashColor: greyD),
//       ),
//       Expanded(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 SvgPicture.asset(
//                   'assets/icons/icon1.svg',
//                   width: 25.0,
//                   height: 25.0,
//                 ),
//                 Text('13.99', style: titleStyle),
//               ],
//             ),
//             Text('Floor Price', style: hashStyle),
//           ],
//         ),
//       ),
//     ],
//   );
// }
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti/shared/components.dart';
import 'package:nti/shared/styles/styles.dart';
import '../shared/styles/colors.dart';

class CollectionScreen extends StatelessWidget {
  List<Map<String, dynamic>> nftData = [
    {
      'price': '#14415',
      'name': 'Hypebeast Apes B',
      'photo': 'assets/images/Image.png',
    },
    {
      'price': '#15315',
      'name': 'Hypebeast Apes D',
      'photo': 'assets/images/image1.png',
    },
    {
      'price': '#17863',
      'name': 'Hypebeast Apes C',
      'photo': 'assets/images/image2.png',
    },
    {
      'price': '#12597',
      'name': 'Hypebeast Apes A',
      'photo': 'assets/images/image3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text('Collection', style: titleStyle),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              profileImageBuilder(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Pablo Escobar ', style: titleStyle),
                  Icon(Icons.verified_rounded, color: Colors.blue),
                ],
              ),
              Text(
                'Each Apes NFT is a unique masterpiece, and crafted by artists around the globe',
                style: hashStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15.0),
              artistInfoBuilder(),
              SizedBox(height: 15.0),
              Row(
                children: [
                  Expanded(
                    child: defaultElevatedButton(
                      function: () {},
                      icon: Icons.add,
                      text: 'Watchlist',
                      color: green,
                    ),
                  ),
                  SizedBox(width: 50.0),
                  SvgPicture.asset(
                    'assets/icons/Icon.svg',
                    width: 25.0,
                    height: 25.0,
                  ),
                ],
              ),
              TabBar(
                indicatorColor: green,
                indicatorWeight: 3,
                labelColor: green,
                unselectedLabelColor: greyD,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                tabs: [
                  Tab(text: "Item's"),
                  Tab(text: 'Activity'),
                ],
              ),
              Expanded(
                child: Container(
                  color: greyW,
                  child: TabBarView(
                    children: [
                      GridView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 3 / 4,
                        ),
                        itemCount: nftData.length,
                        itemBuilder: (context, index) => buildNFTCard(index),
                      ),
                      Center(child: Text('Activity ')),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNFTCard(int index) {
    final nft = nftData[index];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                  stops: [0.6, 1.0],
                ).createShader(rect);
              },
              blendMode: BlendMode.darken,
              child: Image.asset(
                nft['photo'],
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 12,
            child: Text(
              nft['price'],
              style: TextStyle(
                color: green,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            left: 10,
            child: Text(
              nft['name'],
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget profileImageBuilder() => Padding(
    padding: const EdgeInsets.all(15.0),
    child: SizedBox(
      height: 171.0,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Container(
              width: double.infinity,
              height: 135.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/cover.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          CircleAvatar(
            radius: 55.5,
            backgroundColor: greyW,
            child: CircleAvatar(
              radius: 53.0,
              backgroundImage: NetworkImage(
                'https://cdn.prod.www.spiegel.de/images/d2caafb1-70da-47e2-ba48-efd66565cde1_w1024_r0.9975262832405689_fpx44.98_fpy48.86.jpg',
              ),
            ),
          ),
        ],
      ),
    ),
  );

  Widget artistInfoBuilder() => Row(
    children: [
      Expanded(
        child: Column(
          children: [
            Text('10.0K', style: titleStyle),
            Text('Items', style: hashStyle),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(right: 20.0),
        height: 20.0,
        child: DottedLine(direction: Axis.vertical, dashColor: greyD),
      ),
      Expanded(
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/icon1.svg',
                  width: 25.0,
                  height: 25.0,
                ),
                Text('689.10K', style: titleStyle),
              ],
            ),
            Text('Volume', style: hashStyle),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        height: 20.0,
        child: DottedLine(direction: Axis.vertical, dashColor: greyD),
      ),
      Expanded(
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/icon1.svg',
                  width: 25.0,
                  height: 25.0,
                ),
                Text('13.99', style: titleStyle),
              ],
            ),
            Text('Floor Price', style: hashStyle),
          ],
        ),
      ),
    ],
  );
}
