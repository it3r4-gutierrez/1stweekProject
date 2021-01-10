import 'package:flutter/material.dart';
import 'Model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

var counter=0;

 List qList =[
    //Questions( Image.asset("assets/images/brain.png"), false),
   

  ];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {   
    return MaterialApp(   
        
      home: new Scaffold(   
         backgroundColor: Colors.cyan,
           
        body: Center(   
          child: Column(
            children: [
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/top.png'),
                    fit: BoxFit.fill,
                  ),
              
                ),
              ),
              Container(
                height: 50.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/welcome.png'),
                    fit: BoxFit.fill,
                  ),
                
                ),
              ),
              Container(
               height: 50.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/center.png'),
                    fit: BoxFit.fill,
                  ),
                
                ),
              ),
              Container(
               height: 50.0,
                width: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/learn.png'),
                    fit: BoxFit.fill,
                  ),
                
                ),
              ),
              IconButton(
                  icon: Image.asset('assets/images/button.jpg'),
                  iconSize: 100,
                  onPressed: () {
            _navigateToNextScreen(context);
          },
              ),
              IconButton(
                  icon: Image.asset('assets/images/exit.png'),
                  iconSize: 100,
                  onPressed: () {},
              ),
            ]
          )
        ),   
      ),   
    );   
  }   
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
  }

  void _navigateToNextScreen2(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen2()));
  }

    void _navigateToNextScreen3(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen3()));
  }


class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.cyan,
         appBar: AppBar(
      
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              child: Text('SCIENCE is FUN',
              style: new TextStyle(
                fontSize: 20.0,
                fontFamily: 'Roboto',
                color: new Color(0xDD000000))
                )
            ),
            new Container(
              child: Text('click to learn'),
            ),
            new Container(
               decoration: new BoxDecoration(
               color: Colors.blue ),
               child: new Text('categories',
               textAlign: TextAlign.center,
               style: new TextStyle(
                  fontSize: 30.0
                ),)
            ),
            new Container(
          
          padding: EdgeInsets.all(16.0),
          child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          shrinkWrap: true,
          
          
          children: <Widget>[
            //Image.asset("assets/images/human_body.png",),
            FlatButton(
            child: Image.asset("assets/images/human_body.png",),
            onPressed: () {
            _navigateToNextScreen2 (context);
          },
              ),


            Image.asset("assets/images/food.png"),
            Image.asset("assets/images/animals.png"),
            Image.asset("assets/images/plants.png"),
            Image.asset("assets/images/planets.png"),
            Image.asset("assets/images/games.png"),

            ],
           )
          )
         ],
        ),
       )
      ),
    );
  }
}

class NewScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.cyan,
         appBar: AppBar(
      
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              child: Text('HUMAN BODY ORGANS',
              style: new TextStyle(
                fontSize: 20.0,
                fontFamily: 'Roboto',
                color: new Color(0xDD000000))
                )
            ),
            new Container(
          
          padding: EdgeInsets.all(16.0),
          child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          shrinkWrap: true,
          
          
          children: <Widget>[
            Image.asset("assets/images/brain.png",),
            Image.asset("assets/images/lungs.png"),
            Image.asset("assets/images/kidney.jpg"),
            Image.asset("assets/images/intestine.png"),
            Image.asset("assets/images/stomach.jpg"),
            Image.asset("assets/images/heart.png"), 
             ],
              ),
              
            ),
            new Container(
            width: 200,
            height: 50,
            
            child : RaisedButton(
            
            child: Text("Next "),
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.blue,
            onPressed: () {
              },
              ),
            ),

            new Container(
            width: 200,
            height: 50,
            
            child : RaisedButton(
            
            child: Text("Play",),
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.blue,
            onPressed: () { _navigateToNextScreen3 (context);
              },
              ),
            )

          ],
        ),
      )
    ),


    );
  }
}

class NewScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.cyan,
         appBar: AppBar(
      
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              child: Text('HUMAN BODY ORGANS \n GAME',
              style: new TextStyle(
                fontSize: 20.0,
                fontFamily: 'Bold',
                color: new Color(0xDD000000))
                )
            ),
            new Container(
          
          padding: EdgeInsets.all(16.0),
          child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          shrinkWrap: true,
          
          
          children: <Widget>[
            new Container(
               child: TextFormField( style: TextStyle(color: Colors.white),
             ),
                decoration: BoxDecoration(
                  
                  image: DecorationImage(fit: BoxFit.cover,
                  image: AssetImage("assets/images/brain.png",),
                  ),  
                ),
              )
            // Image.asset("assets/images/brain.png",),
            // Image.asset("assets/images/lungs.png"),
            // Image.asset("assets/images/kidney.jpg"),
            // Image.asset("assets/images/intestine.png"),
            // Image.asset("assets/images/stomach.jpg"),
            // Image.asset("assets/images/heart.png"), 
             ],
              ),
              
            ),
         

          ],
        ),
      )
    ),


    );
  }
}

















