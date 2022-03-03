import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waller_design/ui/bottom_nav_pages/reward.dart';
import 'package:waller_design/ui/bottom_nav_pages/token.dart';
import '../../const/AppColors.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

final List<Tab> myTabs = <Tab>[
  const Tab(text: 'Token'),
  const Tab(text: 'Reward'),
  const Tab(text: 'VIP'),
];

final IconData arrow_circle_right_rounded =
    IconData(0xf02dc, fontFamily: 'MaterialIcons');

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5D8BC),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Color(0xffF6E9C8),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Wallet',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.sp,
                          ),
                        ),
                        SizedBox(
                          width: 30.h,
                        ),
                        Text(
                          "High changes Of win token",
                          style: TextStyle(
                            color: Color(0xFFBBBBBB),
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(
                          width: 15.h,
                        ),
                      ],
                    ),
                    actions: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/Logo.png',
                                height: 10.h,
                              ),
                              Text("+50",
                                  style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.plus_one,
                            color: Colors.black,
                          )),
                    ],
                    flexibleSpace: Container(
                      height: 100,
                    ),
                    bottom: const TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.red,
                      indicatorWeight: 3,
                      labelColor: Colors.black,
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      tabs: [
                        Tab(
                          text: "Token",
                        ),
                        Tab(
                          text: "Reward",
                        ),
                        Tab(
                          text: "Vip",
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      Token(),
                      Reward(),
                      Reward(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
