import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible=false;
  bool value = true;

  @override
    void initState(){
      super.initState();
      passwordVisible=true;
    }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LightNG Login"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
            width: 100,
          ),
          Center(
            child: Image.asset(
              'assets/images/shritilogo.png',
              width: 185,
              height: 111,
            ),
          ),
           const SizedBox(
            height: 20,
            width: 100,
          ),
          
          const Center(
            child: Text(
              "Login", 
              style: TextStyle( 
                color: Colors.red, 
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'
              )
            ),
          ),
           const SizedBox(
            height: 45,
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Email",               
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your email'
                  ),
                ),
                const SizedBox(
                  height: 15,
                  width: 100,
                ),
                const Text(
                  "Password",
                  textAlign: TextAlign.start,
                  
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                TextFormField(
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    labelText: 'Enter your password',
                    suffixIcon: IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(
                          () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                  width: 100,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: value, 
                      onChanged: (value){
                        setState(() {
                          value = value;
                        });
                      }
                    ),
                    const Text("Keep me signed in"),
                    const SizedBox(
                      height: 10,
                      width: 30,
                    ),
                    const Text(
                      "Forgot password?",
                      style: TextStyle( 
                        color: Colors.red,
                      )
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                  width: 100,
                ),
                Container(
                  width: 327,
                  height: 52,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: const Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'mulish',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 28,
                  width: 100,
                ),
                const Center(
                  child: Text(
                    "___________ or continue with ___________",
                    style: TextStyle(
                      color: Color.fromARGB(255, 49, 37, 37),
                      fontSize: 12,
                      fontFamily: 'mulish',
                    ),
                  )
                ),
                const SizedBox(
                  height: 13,
                  width: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 77,
                      height: 24,
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Row(
                        children: [
                          Image.network(
                            'http://pngimg.com/uploads/google/google_PNG19635.png',
                            fit:BoxFit.cover
                          )   
                        ],
                      ),
                                          
                    ), 
                    const SizedBox(
                      height: 10,
                      width: 15,
                    ),
                    Container(
                      width: 77,
                      height: 24,
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Row(
                        children: [
                          Image.network(
                            'http://pngimg.com/uploads/google/google_PNG19635.png',
                            fit:BoxFit.cover
                          )   
                        ],
                      ),
                                          
                    ), 
                    
                  ],
                )
                
              ],
            ),
          )
        ],
      ),

    );
  }
}