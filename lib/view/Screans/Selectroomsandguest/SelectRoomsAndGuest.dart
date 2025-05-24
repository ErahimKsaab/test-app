
import 'package:flutter/material.dart';
import 'package:itravelsai_app/util/app_colors.dart';
import 'package:itravelsai_app/util/styles.dart';

class RoomGuestSelectionScreen extends StatefulWidget {
  @override
  _RoomGuestSelectionScreenState createState() =>
      _RoomGuestSelectionScreenState();
}

class _RoomGuestSelectionScreenState extends State<RoomGuestSelectionScreen> {
  int rooms = 1;
  int adults = 2;
  int children = 0;

  Widget _buildCounter(String label, int value, VoidCallback onAdd, VoidCallback onRemove, {String? subLabel}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                if (subLabel != null)
                  Text(subLabel, style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
          ),
          _buildButton("-", onRemove),
          SizedBox(width: 10),
          Text('$value', style: TextStyle(fontSize: 16)),
          SizedBox(width: 10),
          _buildButton("+", onAdd),
        ],
      ),
    );
  }

  Widget _buildButton(String symbol, VoidCallback onPressed) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(symbol, style: TextStyle(fontSize: 18)),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        side: BorderSide(color: primaryColor),
        padding: EdgeInsets.symmetric(horizontal: 14),
        foregroundColor: primaryColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(''),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Select rooms and guests', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  _buildCounter("Rooms", rooms, () => setState(() => rooms++), () {
                    if (rooms > 1) setState(() => rooms--);
                  }),
                  _buildCounter("Adults", adults, () => setState(() => adults++), () {
                    if (adults > 1) setState(() => adults--);
                  }),
                  _buildCounter("Children", children, () => setState(() => children++), () {
                    if (children > 0) setState(() => children--);
                  }, subLabel: "0 - 17 years old"),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
            ),
            child: ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: Text("Apply", style: TextStyle(fontSize: 16,color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}