import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  final Map data;
  const Items({super.key, required this.data});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.data['name']), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            // صورة المنتج
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(widget.data['image'], fit: BoxFit.contain),
            ),
            const SizedBox(height: 20),

            // اسم المنتج
            Text(
              widget.data['name'],
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            // وصف المنتج
            Text(
              widget.data['desc'],
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 20),

            // السعر
            Text(
              widget.data['price'],
              style: TextStyle(
                fontSize: 20,
                color: Colors.yellow[800],
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            // زر إضافة إلى السلة
            ElevatedButton(
              onPressed: () {
                // تقدر تضيف هنا كود إضافة للسلة
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("${widget.data['name']} added to cart"),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.lightBlue,
              ),
              child: const Text(
                "Add to Cart",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
