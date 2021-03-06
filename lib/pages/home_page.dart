import 'package:coffee_appui/utils/coffee_tiles.dart';
import 'package:coffee_appui/utils/coffee_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List of coffee types
  final List coffeeType = [
    //[coffeeType, isSelected]
    ["Cuppacino", true],
    ["Latte", false],
    ["Black", false],
    ["Espresso", false],
    ["Macchiato", false],
  ];

  //Tap on a coffee type to select
  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 35),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, size: 35),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: 35),
            label: '',
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // SizedBox(
          //   height: 15.0,
          // ),
          //Heading
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find the best coffee for you",
              style: GoogleFonts.bebasNeue(fontSize: 75),
            ),
          ),

          const SizedBox(
            height: 25.0,
          ),

          //Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.orange,
                ),
                hintText: 'Find your coffee...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 30.0,
          ),

          //Horizontal Listview of coffee types
          Container(
            height: 50.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeType.length,
              itemBuilder: (context, index) {
                return CoffeeType(
                  coffeetype: coffeeType[index][0],
                  isSelected: coffeeType[index][1],
                  onTap: () {
                    coffeeTypeSelected(index);
                  },
                );
              },
            ),
          ),

          const SizedBox(
            height: 10.0,
          ),

          //Horizontal Listview of coffee tiles
          SizedBox(
            height: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTiles(
                  coffeeImagePath: 'images/cuppacino.jpg',
                  coffeeName: 'Cuppacino',
                  coffeePrice: '5.00',
                ),
                CoffeeTiles(
                  coffeeImagePath: 'images/latte.jpg',
                  coffeeName: 'Latte',
                  coffeePrice: '4.90',
                ),
                CoffeeTiles(
                  coffeeImagePath: 'images/milkcoffee.jpg',
                  coffeeName: 'Milk Coffee',
                  coffeePrice: '6.00',
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 12.0,
          ),

          //Special For You

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Special for you",
              style: GoogleFonts.bebasNeue(fontSize: 45),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          Container(
              height: 1000,
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 25.0),
                      child: Container(
                        padding: const EdgeInsets.all(12.0),
                        width: 523,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black54,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 240,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset('images/milkcoffee.jpg'),
                                  ),
                                ),
                                const SizedBox(
                                  width: 40.0,
                                ),
                                //Coffee Name
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.0, horizontal: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Milk Coffee',
                                        style: TextStyle(fontSize: 35),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '  You Must Try!',
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.grey.shade700),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            //Price
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    '\$6.00',
                                    style: TextStyle(fontSize: 22),
                                  ),
                                  //Add Icon
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: const Icon(Icons.add),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
