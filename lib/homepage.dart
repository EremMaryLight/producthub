import 'package:flutter/material.dart';
import 'package:producthub/product_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/open.jpeg'),
              fit: BoxFit.fill),
        ),
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'find the perfect dress',
                style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              AppButton(
                text: 'Login', 
                bGColor: Colors.transparent,
              ),
              SizedBox(height: 20,),
               AppButton(
                text: 'Get started', 
                bGColor: Color.fromARGB(255, 207, 126, 4),
                borderColor: Color.fromARGB(255, 207, 126, 4),
              )
          
          
            ],
          ),
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
        minimumSize: const Size(420, 56),
        backgroundColor: bGColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? Colors.white,
          ),
        borderRadius: BorderRadius.circular(50),  
        ),

      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductScreen()));
      }, child: Text(
        text, 
        style: const TextStyle(
        fontSize: 18, color: Colors.white
      )));
  }
}
