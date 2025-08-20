import 'package:flutter/material.dart';
import 'package:task_7/datails.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categories = [
    {"iconname": Icons.laptop, "title": "Laptop"},
    {"iconname": Icons.mobile_friendly, "title": "Mobile"},
    {"iconname": Icons.computer, "title": "Pc"},
    {"iconname": Icons.electric_bike, "title": "Bike"},
    {"iconname": Icons.electric_car, "title": "Car"},
  ];

  List products = [
    {
      "image": "assets/images/image1.png",
      "name": "Headphone",
      "desc": "description 1 and 2",
      "price": "350\$",
    },
    {
      "image": "assets/images/image.png",
      "name": "Watch",
      "desc": "description 1 and 2",
      "price": "250\$",
    },
    {
      "image": "assets/images/image1.png",
      "name": "Laptop",
      "desc": "description 3 and 4",
      "price": "750\$",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "*"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "*"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "*",
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[350],
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.lightBlue,
                      ),
                      border: InputBorder.none,
                      hintText: "Search",
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                const Icon(Icons.menu),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              categories[index]['iconname'],
                              size: 40,
                            ),
                          ),
                        ),
                        Text(
                          categories[index]['title'],
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 30),
            const Text(
              "Best Selling",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 220,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Items(data: products[index]),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              products[index]['image'],
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            products[index]['name'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            products[index]['desc'],
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            products[index]['price'],
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.yellow[800],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
