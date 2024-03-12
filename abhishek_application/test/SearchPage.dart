import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search hotels...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 9, // Assuming there are 9 hotels to display
                itemBuilder: (context, index) {
                  return HotelInfo(
                    hotelName: 'Hotel ${index + 1}',
                    distance: '${(index + 1) * 2} km from current location',
                    hasRestaurant: index.isEven,
                    imagePath: 'assets/hotel${index % 3 + 1}.jpg',
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Need Help',
          ),
        ],
      ),
    );
  }
}

class HotelInfo extends StatelessWidget {
  final String hotelName;
  final String distance;
  final bool hasRestaurant;
  final String imagePath;

  const HotelInfo({
    required this.hotelName,
    required this.distance,
    required this.hasRestaurant,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              width: screenWidth,
              height: screenWidth * 0.75, // Adjust height as needed
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            hotelName,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 5),
          Text(
            distance,
            style: TextStyle(color: Colors.black),
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
    );
  }
}
