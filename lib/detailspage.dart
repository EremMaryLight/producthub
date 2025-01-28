import 'package:flutter/material.dart';
import 'package:producthub/data/model.dart';
import 'package:producthub/homepage.dart';

class Detailspage extends StatefulWidget {
  const Detailspage({super.key});

  @override
  State<Detailspage> createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> {
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
        padding: const EdgeInsets.only(
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
                    width: 210,
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
                            "SHOPPING MALL", 
                            style: TextStyle(
                            fontSize:18, 
                            fontWeight: FontWeight.bold,
                            ),
                            ),
                        )

                      ],
                      ),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const SizedBox(width: 120, 
                      child: Text(
                        'Get your products with 10% discount', 
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                        ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade900,
                        ),
                        onPressed: (){}, 
                        child: const Text(
                          'Shop Now', 
                          style: TextStyle(color: Colors.white),
                          ),
                          ),
                          ],
                        ),
                   ),
                ],
                ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:16),
                child: GridView.builder(
                  itemCount: productdetailsList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
                itemBuilder: (context, index){
                  final newProductdetailsList = productdetailsList[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade100.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)),
                      child: Column(children: [
                        Padding(padding: const EdgeInsets.all(20), 
                        child: Image(
                          height: 70,
                          image: AssetImage(newProductdetailsList.img)),
                          ),
                          Text(newProductdetailsList.price),
                          Text(newProductdetailsList.description),
                          Text(newProductdetailsList.size),
                          SizedBox(
                             height: 20,
                           ),
                          AppButton(
                            text: 'add to cart', 
                            bGColor: Colors.red,),
                          ],
                        ),
                        );
                  
                }),
            
            ),
            ),
                     ],
        ),
      ),
    );
  }
}
class AppButton extends StatelessWidget {
  final Color? bGColor;
  final String text;
  final Color? borderColor;
  const AppButton({
    super.key, 
    this.bGColor, 
    required this.text, 
    this.borderColor,
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(100, 16),
        backgroundColor: bGColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? Colors.white,
          ),
        borderRadius: BorderRadius.circular(50),  
        ),

      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Detailspage()));
      }, child: Text(
        text, 
        style: const TextStyle(
        fontSize: 18, color: Colors.white
      )
      )
      );
  }
}
