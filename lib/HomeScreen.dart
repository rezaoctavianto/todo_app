import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
const Homescreen({super.key});

  @override
State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  bool Personal = true, Academic = false, Work = false;
  bool suggest = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: (){},
        backgroundColor: Colors.blueAccent.shade400,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              // Colors.blue, 
              // Colors.purple,
              // Colors.red,
              Colors.white38,
              Colors.white70,
              Colors.white,
              
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 50),
              child: Text("Home Screen",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                ),
              ),
            ),

            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(top: 50),
              child: Text("Home Screen",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                ),
              ),
            ),

            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(top: 50),
              child: Text("Home Screen",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                ),
              ),
            ),

            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Personal ? Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("Personal",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                    ),
                  ),
                ):GestureDetector(

                  onTap: (){
                    Personal = true;
                    Academic = false;
                    Work = false;
                    setState(() {});
                  },
                  child: Text("Personal",
                    style: TextStyle(
                      fontSize: 16,
                      ),
                    ),
                ),
                
                Academic ? Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("Academic",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                    ),
                  ),
                ):GestureDetector(

                  onTap: (){
                    Personal = false;
                    Academic = true;
                    Work = false;
                    setState(() {});
                  },
                  child: Text("Academic",
                    style: TextStyle(
                      fontSize: 16,
                      ),
                    ),
                ),

                Work ? Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("Work",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                    ),
                  ),
                ):GestureDetector(

                  onTap: (){
                    Personal = false;
                    Academic = false;
                    Work = true;
                    setState(() {});
                  },
                  child: Text("Work",
                    style: TextStyle(
                      fontSize: 16,
                      ),
                    ),
                ),
                
              ],
            ),

            SizedBox(height: 20,),

            CheckboxListTile(
              activeColor: Colors.blueAccent.shade400,
              title: Text("Brunch with Nisa"),
              value: suggest, 
              onChanged: (newValue){
              setState(() {
                suggest = newValue!;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
            ),

            CheckboxListTile(
              activeColor: Colors.blueAccent.shade400,
              title: Text("Make Flutter App"),
              value: suggest, 
              onChanged: (newValue){
              setState(() {
                suggest = newValue!;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
            ),

            CheckboxListTile(
              activeColor: Colors.blueAccent.shade400,
              title: Text("Submit Assignment"),
              value: suggest, 
              onChanged: (newValue){
              setState(() {
                suggest = newValue!;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
            )
          ],
        ),
      ),
    );
  }
}