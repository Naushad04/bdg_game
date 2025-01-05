import 'package:bdg_game/view/screens/home_screen/Home_screen_widgets.dart';
import 'package:bdg_game/view/utils/sizes/app_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> gameTimes = ['30s','1Min','3Min','5Min'];
  List<String> random = ['1','5','10','20','50', '100'];

  String selectText = 'Game history';
  List<String> gameTabs = ['Game history', 'Chart', 'My history'];
  List<String> numberPredicationItem = [
    'asset/images/number0.png','asset/images/number1.png',
    'asset/images/number2.png','asset/images/number3.png',
    'asset/images/number4.png','asset/images/number4.png',
    'asset/images/number5.png','asset/images/number7.png',
    'asset/images/number8.png','asset/images/number9.png',
  ];


  @override
  Widget build(BuildContext context) {
    var size = AppSize(context: context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.getWidth,
          height: size.getHeight,
          child: Column(
            children: [
              // Top navigation bar
              Container(
                width: size.getWidth,
                height: size.getHeight * 0.06,
                color: Color(0xFFf9a272),
                padding: EdgeInsets.symmetric(horizontal: size.getHeight * 0.016),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CupertinoIcons.back,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.getWidth * 0.07),
                      child: Image.asset(
                        'asset/images/bdg_logo2.png',
                        width: size.getWidth * 0.36,
                        height: size.getWidth * 0.09,
                        color: Colors.white,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'asset/images/customer.png',
                          width: size.getWidth * 0.09,
                          height: size.getHeight * 0.025,
                          color: Colors.white,
                        ),
                        Icon(Icons.music_note_outlined, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
              // Main content area
              Expanded(
                child: Container(
                  width: size.getWidth,
                  color: Color(0xFFf9d6c3),
                  padding: EdgeInsets.symmetric(horizontal: size.getWidth * 0.025),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: size.getWidth,
                          margin: EdgeInsets.only(top: size.getHeight * 0.025),
                          padding: EdgeInsets.symmetric(
                            horizontal: size.getWidth  * 0.050,
                            vertical: size.getHeight * 0.020
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFf9a272),
                            // color: Colors.white.withAlpha(30),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: size.getWidth * 0.05),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '₹1000.0',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(width: size.getWidth * 0.04,),
                                    Icon(Icons.refresh_rounded, size: 20, color: Colors.white38,)
                                  ],
                                ),
                              ),
                              SizedBox(height: size.getHeight * 0.01,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.account_balance_wallet_rounded,
                                    color: Colors.orangeAccent.shade100,
                                    size: 20,
                                  ),
                                  SizedBox(width: size.getWidth * 0.02,),
                                  Text(
                                    'Wallet balance',
                                    style: TextStyle(color: Colors.white60, fontSize: size.getHeight * 0.017),
                                  )
                                ],
                              ),
                              SizedBox(height: size.getHeight * 0.02,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    onPressed: (){

                                    },
                                    child: Text(
                                      'Withdraw',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(
                                          size.getWidth * 0.35,
                                          size.getHeight * 0.048
                                      ),
                                      backgroundColor: Color(0xFF326788)
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: (){

                                    },
                                    child: Text(
                                      'Deposit',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(
                                          size.getWidth * 0.35,
                                          size.getHeight * 0.048
                                      ),
                                      backgroundColor: Colors.green
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: size.getHeight * 0.12,
                          margin: EdgeInsets.only(top: size.getHeight * 0.020),
                          decoration: BoxDecoration(
                              color: Color(0xFFf9a272),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GridView.builder(
                            itemCount: gameTimes.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                              childAspectRatio: 0.88
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: index == 0 ?  Color(0xFFfdfdfb): Color(0xFFf9a272),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.watch_later, color: index == 0 ? Colors.black : Colors.white),
                                      SizedBox(height: size.getHeight * 0.007,),
                                      Text(
                                        'Win Go\n${gameTimes[index]}',
                                        style: TextStyle(
                                          color: index == 0 ? Colors.black : Colors.white,
                                          fontSize: 14
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: size.getWidth,
                          margin: EdgeInsets.only(top: size.getHeight * 0.020),
                          padding: EdgeInsets.all(size.getWidth * 0.025),
                          decoration: BoxDecoration(
                            color: Color(0xFFf9a272),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black38),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: size.getWidth * 0.06,
                                      vertical: size.getHeight * 0.002
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.insert_page_break_sharp, size: 20, color: Colors.white,),
                                        SizedBox(width: size.getHeight * 0.006,),
                                        Text(
                                          'How to play',
                                          style: TextStyle(color: Colors.white, fontSize: 14),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: size.getHeight * 0.006,),
                                  Padding(
                                    padding:  EdgeInsets.only(left: size.getWidth * 0.02),
                                    child: Text(
                                      'Win Go 30s',
                                      style: TextStyle(color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                  SizedBox(height: size.getHeight * 0.01,),
                                  Container(
                                    width: size.getWidth * 0.45,
                                    height: size.getHeight * 0.045,
                                    child: GridView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 5,
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 5,
                                        childAspectRatio: 0.95,
                                        mainAxisSpacing: 0.6
                                      ),
                                      itemBuilder: (BuildContext context, int index) {
                                        return Image.asset(
                                          numberPredicationItem[index],
                                          fit: BoxFit.fill,
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Time remaining',
                                    style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: size.getHeight * 0.007,),
                                  Row(
                                    children: [
                                      Container(
                                        width: size.getWidth * 0.060,
                                        height: size.getHeight * 0.040,
                                        color: Colors.white,
                                        child: Center(
                                          child: Text('0'),
                                        ),
                                      ),
                                      SizedBox(width: size.getWidth * 0.014,),
                                      Container(
                                        width: size.getWidth * 0.060,
                                        height: size.getHeight * 0.040,
                                        color: Colors.white,
                                        child: Center(
                                          child: Text('0'),
                                        ),
                                      ),
                                      SizedBox(width: size.getWidth * 0.014,),
                                      Container(
                                        width: size.getWidth * 0.035,
                                        height: size.getHeight * 0.040,
                                        color: Colors.white,
                                        child: Icon(Icons.more_vert, size: 17,),
                                      ),
                                      SizedBox(width: size.getWidth * 0.014,),
                                      Container(
                                        width: size.getWidth * 0.060,
                                        height: size.getHeight * 0.040,
                                        color: Colors.white,
                                        child: Center(
                                          child: Text('3'),
                                        ),
                                      ),
                                      SizedBox(width: size.getWidth * 0.014,),
                                      Container(
                                        width: size.getWidth * 0.060,
                                        height: size.getHeight * 0.040,
                                        color: Colors.white,
                                        child: Center(
                                          child: Text('0'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: size.getHeight * 0.01,),
                                  Text(
                                    '20257367267353',
                                    style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: size.getWidth,
                          padding: EdgeInsets.all(size.getWidth * 0.020),
                          margin: EdgeInsets.only(top: size.getHeight * 0.020),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFf9a272)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {

                                    },
                                    child: Text(
                                      'Green',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            bottomLeft: Radius.circular(15),
                                        ),
                                      ),
                                      minimumSize: Size(
                                        size.getWidth * 0.28,
                                        size.getHeight * 0.048,
                                      )
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {

                                    },
                                    child: Text(
                                      'Violet',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFf534be),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      minimumSize: Size(
                                        size.getWidth * 0.28,
                                        size.getHeight * 0.048,
                                      )
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {

                                    },
                                    child: Text(
                                      'Red',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                        ),
                                      ),
                                      minimumSize: Size(
                                        size.getWidth * 0.28,
                                        size.getHeight * 0.048,
                                      )
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: size.getWidth,
                                height: size.getHeight * 0.17,
                                margin: EdgeInsets.only(top: size.getHeight * 0.010),
                                padding: EdgeInsets.all(size.getWidth * 0.015),
                                decoration: BoxDecoration(
                                  color: Colors.black12.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: GridView.builder(
                                  itemCount: numberPredicationItem.length,
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 5
                                  ),
                                  itemBuilder: (BuildContext context, int index) {
                                    return Image.asset(
                                      numberPredicationItem[index],
                                      fit: BoxFit.fill,
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: size.getHeight * 0.015),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: size.getHeight * 0.08,
                                      height: size.getHeight * 0.04,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.red, width: 1),
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Random',
                                          style: TextStyle(color: Colors.red, fontSize: 13 ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: size.getWidth * 0.7,
                                      height: 30,
                                      // color: Colors.red,
                                      child: ListView.builder(
                                        itemCount: random.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (BuildContext context, int index) {
                                           return Container(
                                             margin: EdgeInsets.symmetric(horizontal: size.getWidth * 0.009),
                                             padding: EdgeInsets.symmetric(horizontal: size.getWidth * 0.020),
                                             decoration: BoxDecoration(
                                               color: index == 0 ? Colors.green : Color(0xFFf9d6c3),
                                               borderRadius: BorderRadius.circular(10)
                                             ),
                                             child: Center(
                                               child: Text(
                                                 'X${random[index]}',
                                                 style: TextStyle(
                                                   color: index == 0 ? Colors.white60 : Colors.black,
                                                   fontSize: 12
                                                 ),
                                               ),
                                             ),
                                           );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Center(
                                child: Container(
                                  height: size.getHeight * 0.058,
                                  width: size.getWidth,
                                  margin: EdgeInsets.only(top: size.getHeight * 0.020),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    gradient: LinearGradient(
                                      colors: [Colors.orange, Colors.blue.shade500],
                                      stops: [0.5, 0.5],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {

                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Small",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {

                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Big",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: size.getHeight * 0.020),
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: gameTabs.length,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 5,
                              childAspectRatio: 2.5,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              bool isSelected = selectText == gameTabs[index];
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    selectText = gameTabs[index];
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: isSelected ? Color(0xFFeb6d21) : Color(0xFFe8bba0).withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    gameTabs[index].toUpperCase(),
                                    style: TextStyle(
                                      color: isSelected ? Colors.white : Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.5,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                            height: 300,
                            child: Padding(
                              padding:  EdgeInsets.only(top: size.getHeight * 0.020),
                              child: _getBackgroundColor(),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getBackgroundColor() {
    HomeScreenWidgets homeScreenWidgets = HomeScreenWidgets();
    switch (selectText) {
      case 'Game history':
        return homeScreenWidgets.gameHistoryLayout();
      case 'Chart':
        return homeScreenWidgets.chartLayout();
      case 'My history':
        return homeScreenWidgets.myHistoryLayout();
      default: return Container();
    }
  }

}





