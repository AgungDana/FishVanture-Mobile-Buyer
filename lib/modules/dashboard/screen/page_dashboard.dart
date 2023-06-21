import 'dart:ui';

import 'package:app/config/colors.dart';
import 'package:app/config/text_style.dart';
import 'package:app/modules/home/screen/page_home.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

final screens = [
  HomePage(),
  HomePage(),
  HomePage(),
  HomePage(),
];

int selectedIndex = 0;

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.background,
      appBar: _AppbarHome(),
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        color: CustomColor.white,
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: CustomColor.white,
          currentIndex: selectedIndex,
          unselectedItemColor: CustomColor.fadedGrey,
          selectedLabelStyle: CustomTextStyle.body2Medium,
          iconSize: 24.0,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              activeIcon: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return RadialGradient(
                    center: Alignment.bottomRight,
                    radius: 1,
                    colors: [
                      CustomColor.primary,
                      CustomColor.white,
                    ],
                    tileMode: TileMode.clamp,
                  ).createShader(bounds);
                },
                child: Icon(IconlyBold.home),
              ),
              icon: Icon(IconlyBold.home),
            ),
            BottomNavigationBarItem(
              label: 'Jadwal',
              activeIcon: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return RadialGradient(
                    center: Alignment.bottomRight,
                    radius: 1,
                    colors: [
                      CustomColor.primary,
                      CustomColor.white,
                    ],
                    tileMode: TileMode.clamp,
                  ).createShader(bounds);
                },
                child: Icon(IconlyBold.calendar),
              ),
              icon: Icon(IconlyBold.calendar),
            ),
            BottomNavigationBarItem(
              label: 'Pesanan',
              activeIcon: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return RadialGradient(
                    center: Alignment.bottomRight,
                    radius: 1,
                    colors: [
                      CustomColor.primary,
                      CustomColor.white,
                    ],
                    tileMode: TileMode.clamp,
                  ).createShader(bounds);
                },
                child: Icon(IconlyBold.bag),
              ),
              icon: Icon(IconlyBold.bag),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              activeIcon: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return RadialGradient(
                    center: Alignment.bottomRight,
                    radius: 1,
                    colors: [
                      CustomColor.primary,
                      CustomColor.white,
                    ],
                    tileMode: TileMode.clamp,
                  ).createShader(bounds);
                },
                child: Icon(IconlyBold.profile),
              ),
              icon: Icon(IconlyBold.profile),
            ),
          ],
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
        ),
      ),
    );
  }
}

class _AppbarHome extends StatelessWidget implements PreferredSizeWidget {
  const _AppbarHome({
    super.key,
  });

  @override
  Size get preferredSize => const Size(double.infinity, 101);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101,
      color: CustomColor.primary,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: [
              // Icon(IconlyLight.arrow_left),
              CircleAvatar(
                radius: 20,
                backgroundColor: CustomColor.grey,
                backgroundImage: AssetImage('assets/default_profile.png'),
              ),
              const SizedBox(width: 12.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Selamat Datang,',
                    style: CustomTextStyle.body3Regular
                        .copyWith(color: CustomColor.white),
                  ),
                  const SizedBox(height: 2.0),
                  Text(
                    'Agung Nurcahyo Rosiandana',
                    style: CustomTextStyle.body1Medium
                        .copyWith(color: CustomColor.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}