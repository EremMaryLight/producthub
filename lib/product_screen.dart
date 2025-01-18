import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<String> category = [
    'All Products', 
    'Women Clothes',
    'male clothes', 
    'Beverages', 
    'Electronics'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: Text(
          'ProductHub',
          style: TextStyle(
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 28,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.shopping_cart_checkout_outlined,
            size: 28,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 10,
          top: 10,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 13, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: index == 0 ? Colors.red: Colors.grey),
                          ),
                          child: Text(category[index]),
                    );
                  }),
            ),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 190,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red.shade100.withOpacity(0.3)
              ),
                child: Row(children: [
                  Container(
                    width: 220,
                    decoration:const BoxDecoration(
                      color: Color.fromARGB(225, 235, 221, 200),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100), 
                      topRight: Radius.circular(100))
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Image(
                          height: 120,
                          image: AssetImage('assets/images/open.jpeg'),
                          ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Flash Sale", 
                            style: TextStyle(
                            fontSize:18, 
                            fontWeight: FontWeight.bold,
                            ),
                            ),
                        )

                      ],
                      ),
                  ),
                  Column(children: [
                    SizedBox(width: 120, 
                    child: Text(
                      'Get your Special Sale up to 50%', 
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold,
                      ),),),
                  ],)
                ],
                ),
            )
                     ],
        ),
      ),
    );
  }
}
