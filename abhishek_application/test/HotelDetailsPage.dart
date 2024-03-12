import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HotelDetailsPage extends StatelessWidget {
  final String hotelName;
  final String distance;
  final bool hasRestaurant;
  final String imagePath;
  final int hotelIndex;

  const HotelDetailsPage({
    required this.hotelName,
    required this.distance,
    required this.hasRestaurant,
    required this.imagePath,
    required this.hotelIndex,
  });

  void addBooking(String hotelName) {
    FirebaseFirestore.instance.collection('hotel_name').add({
      'hotel_name': hotelName,
      // Add other booking details as needed
    }).then((value) {
      print("Booking added successfully!");
    }).catchError((error) {
      print("Failed to add booking: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel Details'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            imagePath,
            height: 200, // Adjust height as needed
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hotel ${hotelIndex + 1}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  hotelName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  distance,
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  hasRestaurant ? 'Restaurant available' : 'No restaurant',
                  style: TextStyle(
                    color: hasRestaurant ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price: 2500 Rs', // Add the actual price here
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Pass the hotelName to the addBooking function
                    addBooking(hotelName);
                  },
                  child: Text('Book Now'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
