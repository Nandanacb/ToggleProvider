import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scroll/toggleprovider.dart';

class Togglescreen extends StatefulWidget{
  @override
  State<Togglescreen> createState()=> _TogglescreenState();
}

class _TogglescreenState extends State<Togglescreen>{
  
 @override
  Widget build(BuildContext context){
    final toggleprovider= Provider.of<Toggleprovider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Toggle button with provider"),),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(toggleprovider.ison? 'on':'off'),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
               toggleprovider.togglwswitch(); 
               
              }, child: Text( toggleprovider.ison? 'Turn off': 'Turn on')),
            ],
          ),
        ),
      ),
    );
  }
}