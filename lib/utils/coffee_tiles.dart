import 'package:flutter/material.dart';

class CoffeeTiles extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;
  CoffeeTiles({
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, bottom: 25.0),
        child: Container(
          padding: const EdgeInsets.all(12.0),
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black54,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(coffeeImagePath),
              ),

              //Coffee Name
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeeName,
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'With Almond Milk',
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade700),
                    ),
                  ],
                ),
              ),

              //Price
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$' + coffeePrice,
                      style: const TextStyle(fontSize: 22),
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
    );
  }
}
