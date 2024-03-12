import 'package:flutter/material.dart';
import 'HotelDetailsPage.dart';
import 'SearchPage.dart'; // Import the SearchPage.dart file
import 'BookingsPage.dart'; // Import the BookingsPage.dart
import 'NeedHelpPage.dart'; // Import the NeedHelpPage.dart


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Home'),
            centerTitle: true,
            floating: true,
            snap: true,
            elevation: 0,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return constraints.biggest.height > 150
                    ? Image.asset(
                  'assets/Oyo_logo.jpeg',
                  fit: BoxFit.cover,
                )
                    : SizedBox.shrink();
              },
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CityButton(
                    cityName: 'Mumbai',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CityPage(cityName: 'Mumbai'),
                        ),
                      );
                    },
                  ),
                  CityButton(
                    cityName: 'Pune',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CityPage(cityName: 'Pune'),
                        ),
                      );
                    },
                  ),
                  CityButton(
                    cityName: 'Bangalore',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CityPage(cityName: 'Bangalore'),
                        ),
                      );
                    },
                  ),
                  CityButton(
                    cityName: 'Delhi',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CityPage(cityName: 'Delhi'),
                        ),
                      );
                    },
                  ),
                  CityButton(
                    cityName: 'Chennai',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CityPage(cityName: 'Chennai'),
                        ),
                      );
                    },
                  ),
                  CityButton(
                    cityName: 'Hyderabad',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CityPage(cityName: 'Hyderabad'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return HotelInfo(
                  hotelName: 'Hotel ${index + 1}',
                  distance: '${(index + 1) * 2} km from current location',
                  hasRestaurant: index.isEven,
                  imagePath: 'assets/hotel${index % 3 + 1}.jpg',
                  hotelIndex: index,
                );
              },
              childCount: 9, // Add more if needed
            ),
          ),
        ],
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
        onTap: (int index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchPage(),
              ),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookingsPage()
              ),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NeedHelpPage(),
              ),
            );
          }
        },
      ),
    );
  }
}

class CityButton extends StatelessWidget {
  final String cityName;
  final VoidCallback onPressed;

  const CityButton({
    required this.cityName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(cityName),
      ),
    );
  }
}

class HotelInfo extends StatelessWidget {
  final String hotelName;
  final String distance;
  final bool hasRestaurant;
  final String imagePath;
  final int hotelIndex;

  const HotelInfo({
    required this.hotelName,
    required this.distance,
    required this.hasRestaurant,
    required this.imagePath,
    required this.hotelIndex,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HotelDetailsPage(
                hotelName: hotelName,
                distance: distance,
                hasRestaurant: hasRestaurant,
                imagePath: imagePath,
                hotelIndex: hotelIndex,
              ),
            ),
          );
        },
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
              'Hotel ${hotelIndex + 1}', // Display hotel number
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 5),
            Text(
              distance,
              style: TextStyle(
                color: Colors.red, // Set the color to red
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
    );
  }
}

// Create separate pages for each city
class CityPage extends StatelessWidget {
  final String cityName;

  CityPage({required this.cityName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cityName),
        centerTitle: true,
      ),
      body: HomePage(),
    );
  }
}
