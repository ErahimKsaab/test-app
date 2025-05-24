import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:itravelsai_app/util/Dialogs.dart';
import 'package:itravelsai_app/util/app_colors.dart';
import 'package:itravelsai_app/util/styles.dart';
import 'package:itravelsai_app/view/Screans/HomePageScrean/HomePageScrean.dart';

import '../../../util/Localization.dart';
import '../../../util/images.dart';


class ButtomNavigation extends StatefulWidget {
  @override
  _ButtomNavigationState createState() => _ButtomNavigationState();
}
class _ButtomNavigationState extends State<ButtomNavigation> with   WidgetsBindingObserver{
  int _selectedIndex = 0;


  static  final List<Widget> _widgetOptions = <Widget>[
    StaysPage(),
    StaysPage(),
    StaysPage(),
    StaysPage(),
  ];





  int Checkonce=0;
  int Checkonce2=0;
  int Checkonce3=0;
  void _onItemTapped(int index) {

    setState(() {
      _selectedIndex = index;
      if(index==2&&Checkonce==0){
        Checkonce=1;
      }else if(index==1&&Checkonce2==0){
        Checkonce2=1;
      }else if(index==2&&Checkonce3==0){
        Checkonce3=1;
      }

    });
  }
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  void messageReceived(String msg){
    setState(() {
      var message=msg;
      print(message);
    });

  }
  @override
  DateTime? currentBackPressTime;
  bool onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime??DateTime.now()) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Dialogs().showtoast(getLang( context: context, key: "Tap_Exit"));
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async{


          bool backStatus = onWillPop();
          if (backStatus) {
            SystemNavigator.pop();
          }


        return  false ;
      },
      child: Scaffold(
        body:  Stack(children: [

         // Image.asset(Images.AppLogo),
          if(_selectedIndex==0) Icon(Icons.home),
          if(_selectedIndex==2) Icon(Icons.favorite_border),
          if(_selectedIndex==3)Icon(Icons.book),
          if(_selectedIndex==4)Icon(Icons.person_outline),

          IndexedStack(
              index: _selectedIndex,
              children:_widgetOptions
          ),


        ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,


          selectedLabelStyle: const TextStyle( fontSize: 12,color: Colors.black),

          items:   <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:_selectedIndex==0?Icon(Icons.home,color:  primaryColor):Icon(Icons.home,),
              label: getLang( context: context, key: "Home"),
            ),
            BottomNavigationBarItem(
              icon:_selectedIndex==1?Icon(Icons.favorite_border,color: primaryColor):Icon(Icons.favorite_border,),
              label: getLang( context: context, key: "Saved"),
            ),
            BottomNavigationBarItem(
              icon:_selectedIndex==2?Icon(Icons.book,color:  primaryColor):Icon(Icons.book,),
              label:getLang( context: context, key: "Bookings"),
            ),
            BottomNavigationBarItem(
              icon:_selectedIndex==3?Icon(Icons.person_outline,color: primaryColor):Icon(Icons.person_outline,),
              label:getLang( context: context, key: "Profile"),
            ),



          ],
          currentIndex: _selectedIndex,
          elevation: 0,
          selectedItemColor: Colors.black87,
          showSelectedLabels: true,

          onTap: _onItemTapped,
        ),
      ),
    );
  }
}