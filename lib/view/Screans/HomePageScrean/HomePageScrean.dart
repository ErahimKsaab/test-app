import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itravelsai_app/util/Localization.dart';
import 'package:itravelsai_app/util/helperclass.dart';
import 'package:itravelsai_app/util/images.dart';
import 'package:itravelsai_app/view/Screans/DestinationScreen/FindDestination.dart';
import 'package:itravelsai_app/view/Screans/Selectroomsandguest/SelectRoomsAndGuest.dart';
import 'package:itravelsai_app/view/widgets/SharedWidget.dart';
import 'package:itravelsai_app/view/Screans/HomePageScrean/Widgets.dart';
DateTime? selectedDate;
Future<void> pickDate(context) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(), // current date
    firstDate: DateTime(2000),   // earliest date
    lastDate: DateTime(2100),    // latest date
  );

  if (picked != null && picked != selectedDate) {
    //  setState(() {
    selectedDate = picked;
    //  });
  }
}

class StaysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F6FF),
      appBar: AppBar(automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF7849F7),
        elevation: 0,
        title: Row(
          children: [
            Image.asset(Images.AppLogo, height: 30),
            Spacer(),
            Icon(Icons.notifications_none,color: Colors.white,),
          ],
        ),
      ),
      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(color: Color(0xFF7849F7),height: 60,
              child: Row(
                children: [
                  buildTab(Icons.bed, 'Stays', isSelected: true),
                  buildTab(Icons.flight, 'Flights'),
                  buildTab(Icons.directions_car, 'Car Rental'),
                ],
              )
              ,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(   mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  InkWell(onTap: () {
                    navigateTo(context: context,screen: DestinationScreen());
                  },child: buildSearchField(Icons.location_on, 'Enter destination',false)),
                  SizedBox(height: 20),


                  InkWell(onTap: () {
                    pickDate(context);
                  },child: buildSearchField(Icons.calendar_today, 'Choose dates',false)),
                  SizedBox(height: 20),
                  InkWell(onTap: () {
                    navigateTo(context: context,screen: RoomGuestSelectionScreen());


                  },child: buildSearchField(Icons.person, '1 room. 2 adults.',false)),
                  SizedBox(height: 35),
                  SharedButton(Title:'Search',oninvite:(){
                    navigateTo(context: context,screen: StaysPage());
                  } ,),
                  SizedBox(height: 24),
                  Text(
                    'Popular stays',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  buildStayCards()
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }


}


Widget buildTabs() {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      color: Color(0xFF7849F7),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      children: [
        buildTab(Icons.bed, 'Stays', isSelected: true),
        buildTab(Icons.flight, 'Flights'),
        buildTab(Icons.directions_car, 'Car Rental'),
      ],
    ),
  );
}

Widget buildTab(IconData icon, String label, {bool isSelected = false}) {
  return Expanded(
    child: Container(
      decoration: isSelected
          ? BoxDecoration(color:Color(0xFF7849F7),
         border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(12),
      )
          : null,
      child: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color:  Colors.white),
              SizedBox(width: 6),
              Text(label,
                  style: TextStyle(
                    color:  Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget buildSearchField(IconData icon, String hint, bool enable) {
  return TextField(enabled: enable,
    decoration: InputDecoration(
      prefixIcon: Icon(icon),
      hintText: hint,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      filled: true,
      fillColor: Colors.white,
    ),
  );
}



Widget stayCard({
  required String imagePath,
  required String price,
  required String type,
  required String title,
  required double rating,
  required int reviews,
  required String location,
  bool isRare = false,
}) {
  return Container(
    width: 250,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(imagePath, height: 120, width: double.infinity, fit: BoxFit.cover),
              ),
              if (isRare)
                Positioned(

                  left: 8,
                  bottom: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.house,color: Colors.purple,size: 15,),
                        SizedBox(width: 3,),
                        Text('Rare find',
                            style: TextStyle(color: Color(0xFF8D5EF2), fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Icon(Icons.favorite_border, color: Colors.white),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),


                Row(
                  children: [
                    Text('$price', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),

                    Text('  AUD total', style: TextStyle(fontSize: 19,fontWeight: FontWeight.normal)),
                  ],
                ),
                SizedBox(height: 5),
                Text(type, style: TextStyle(color: Color(0xFF7849F7),fontSize: 18)),
                SizedBox(height: 15),
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Row(children: List.generate(5, (index) => Icon(Icons.star, color: Colors.orange, size: 20) ,)),
                SizedBox(height: 20),

                Row(
                  children: [
                    Text('$rating  ' ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                    Text('$reviews reviews', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54)),

                  ],
                ),

                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined,color: Colors.grey,),
                    Text(location, style: TextStyle(color: Colors.black87)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}