import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation){
            if(orientation == Orientation.portrait){
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ), onPressed: (){
                    },
                    child: const Text('BUTTON 1'),),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: (){
                    },
                      child: const Text('BUTTON 2'),),
                  ],
                ),
              );
            }
            else{
              return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),onPressed: (){
                    },
                      child: const Text('BUTTON 1'),),
                    const SizedBox(
                      width: 20.0,
                    ),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),onPressed: (){
                    },
                      child: const Text('BUTTON 2'),),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
