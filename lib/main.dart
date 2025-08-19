import 'package:flutter/material.dart';

void main() {
  runApp(const Task2());
}

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Product Showcase", style: TextStyle(fontSize: 24)),
        ),
      ),
      body: ListView(children: [PoductItem1(), PoductItem2()]),
    );
  }
}

class PoductItem1 extends StatelessWidget {
  const PoductItem1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Stack(
        children: [
          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
            child: Container(
              width: double.infinity,
              height: 450,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    "https://imgs.search.brave.com/scAUti9WL7aEkBpMXEqCdqW13I8lzmyKpDo3m96QurY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNDYz/Mzc4MTkxL3Bob3Rv/L3dvbWVuLWhhbmRi/YWcuanBnP3M9NjEy/eDYxMiZ3PTAmaz0y/MCZjPVVBcXVrV3N2/QjdYNU5sRm9SSXd3/UmhtUTFZOXJTelJN/cllRajBJbVB4aDA9",
                    height: 300,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      "Product Name",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 8),
                    child: Text(
                      "\$99.99",
                      style: TextStyle(color: Color(0xff4CAF50), fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 15,
            child: Container(child: OutlinedButtonExample()),
          ),
        ],
      ),
    );
  }
}

class PoductItem2 extends StatelessWidget {
  const PoductItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Stack(
        children: [
          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
            child: Container(
              width: double.infinity,
              height: 380,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    "https://imgs.search.brave.com/lICeT6juZLmQ_QpLP7m4ArLKPzp3Zlfx9QFg_FGaRX0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4u/bW9zLmNtcy5mdXR1/cmVjZG4ubmV0LzVn/cVlCdG9YSjNhcGl6/SGE3Nks1aUMuanBn",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      "Product Asset",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 8),
                    child: Text(
                      "\$49.99",
                      style: TextStyle(color: Color(0xff4CAF50), fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 30,
            child: Container(child: OutlinedButtonExample()),
          ),
        ],
      ),
    );
  }
}

class OutlinedButtonExample extends StatelessWidget {
  const OutlinedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0xffF7F2FA),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          foregroundColor: Colors.deepPurple,
          side: BorderSide(color: Color(0xFFDADADA), width: 1),
          shadowColor: Colors.black.withOpacity(0.05),
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 18,
            right: 18,
            top: 4,
            bottom: 4,
          ),
          child: Text("Buy Now"),
        ),
      ),
    );
  }
}
