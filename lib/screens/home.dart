import 'package:flutter/material.dart';

import 'login.dart';

class Home extends StatelessWidget {
  final data;
  const Home({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name  = data[0]['name'];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome $name",
          style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text('Login Successful',  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
          ),
           const SizedBox(height: 400,),
           Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                minimumSize: MaterialStateProperty.all(const Size(300, 50)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () {
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login_Form()));
            }, child: const Text('LogOut',  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),),
          )
        ]
      ),
    );
  }
}