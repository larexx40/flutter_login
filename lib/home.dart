

import 'package:flutter/material.dart';
import 'package:flutter_login/login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  
}

class _HomeScreenState extends State<HomeScreen> {
  bool passwordVisible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Flutteer Practice"),
        leading: const Icon(Icons.home),
      ),
      body: Column(
        children: [
          const Icon(Icons.home, color: Colors.green,size: 60,),
          const Text("Welcome to my first class with Temi on flutter", style: TextStyle( color: Colors.red, fontSize: 20  ),),
          const Text("Hi there, I'm Olanrewaju"),
          const Text("Welcome to my class"),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 50,
            width: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.man,
                      size: 50,
                    ),
                    SizedBox(
                      height: 10,
                      width: 100,
                    ),
                    Text(
                      "Good man", 
                      style: TextStyle(
                        fontWeight: FontWeight.bold),
                      )
                  ],
                ),
                
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 100,
                width: 30,
              ),
              Container(
                height: 100,
                width: 100,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.account_balance,
                      size: 50,
                    ),
                    SizedBox(
                      height: 10,
                      width: 100,
                    ),
                    Text(
                      "My Balance", 
                      style: TextStyle(
                        fontWeight: FontWeight.bold),
                      )
                  ],
                ),
                
              ),
            ],
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 50,
            width: 100,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: const Size(100,50),
              maximumSize: const Size(150, 75)
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            }, 
            child: const Text("Goto Login"),
            
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 40,
            width: 100,
          ),
          Container(
            
            width: 100,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Center(
              child: Text("Click me")),
          )
        ],
      )
      
    );
  }
}