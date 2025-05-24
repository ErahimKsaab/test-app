import 'package:flutter/material.dart';
import 'package:itravelsai_app/util/Localization.dart';
import 'package:itravelsai_app/util/helperclass.dart';
import 'package:itravelsai_app/util/images.dart';
import 'package:itravelsai_app/view/Screans/LoginScrean/LoginScrean.dart';
import 'package:itravelsai_app/view/widgets/SharedWidget.dart';
class TravelHomePage extends StatelessWidget {
  const TravelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex:80,child: Container( width: MediaQuery.of(context).size.width,  decoration:BoxDecoration(image: DecorationImage(image: ExactAssetImage(Images.StartPage),fit: BoxFit.cover)) )),
          const SizedBox(height: 80),

          Column(
            children: [
              Image.asset(
                Images.AppLogo,
                fit: BoxFit.contain,
                height: 60

              ),
              const SizedBox(height: 25),
                Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  getLang(context: context,key: "Start_Comment"),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF3A2F6C),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:SharedButton(Title:getLang(context: context,key: "Get_started"),oninvite:(){
              navigateTo(context: context,screen: LoginPage());
            } ,)
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }


}