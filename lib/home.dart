import 'dart:convert';


import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/e.dart';
import 'package:flutter_application_2/pages/t.dart';
import 'package:http/http.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';



import 'notification_details.dart';
import 'notification_list.dart';
import 'pages/a.dart';
import 'pages/notification.dart';
import 'pages/person.dart';
import 'pages/profile.dart';
import 'pages/task.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';



class Home extends StatelessWidget {
  const Home( {Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {

      return [
        Aa(),
        addUserForm(),

        const MessageView(),
        const Application(),
        Profile(),


      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(


          iconSize: 35.0,
          icon: const Icon(Icons.home),

          title: ("Home"),
          activeColorPrimary: Color.fromARGB(255, 54, 35, 202),
          inactiveColorPrimary: Color.fromARGB(255, 242, 245, 244),
        ),
        PersistentBottomNavBarItem(
          iconSize: 35.0,
          icon: const Icon(Icons.book),
          title: ("Task"),

          activeColorPrimary: Color.fromARGB(255, 54, 35, 202),
          inactiveColorPrimary: Color.fromARGB(255, 249, 248, 248),


        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.shopping_cart,
            color: Color.fromARGB(255, 54, 35, 202),
          ),
          inactiveIcon: const Icon(
            Icons.shopping_cart_outlined,
            color: Color.fromARGB(255, 54, 35, 202),
          ),
          activeColorPrimary: Color.fromARGB(255, 54, 35, 202),
          inactiveColorPrimary: Color.fromARGB(255, 247, 245, 245),
        ),
        PersistentBottomNavBarItem(
          iconSize: 37.0,
          icon: const Icon(Icons.notifications_on),
          title: ("notification"),

          activeColorPrimary: Color.fromARGB(255, 54, 35, 202),
          inactiveColorPrimary: Color.fromARGB(255, 253, 250, 250),
        ),
        PersistentBottomNavBarItem(
          iconSize: 35.0,
          icon: const Icon(Icons.settings_outlined),
          title: ("Setting"),
          activeColorPrimary: Color.fromARGB(255, 7, 28, 186),
          inactiveColorPrimary: Color.fromARGB(255, 245, 243, 243),
        ),
      ];
    }

    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      controller: controller,
      confineInSafeArea: true,
      backgroundColor: Color.fromARGB(255, 96, 121, 232),
      navBarHeight: 75,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(1.0),
        colorBehindNavBar: Color.fromARGB(255, 255, 255, 255),
      ),

      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15,
    );

  }


  }
