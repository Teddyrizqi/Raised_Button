import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text('Tap Untuk ke About'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/portofolio');
              },
              child: Text('Tap Untuk ke My Portofolio'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
              child: Text('Tap Untuk ke Contact'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/halaman-404');
              },
              child: Text('Tap Halaman lain'),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Saya'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
                'Hallo nama saya Teddy Latief Miftahur Rizqi, '
                'Seorang manusia yang '
                'senantiasa memiliki banyak jokes berbahaya ',
                style: TextStyle(fontSize: 25, color: Colors.lightBlue),
                textAlign: TextAlign.center),
          ),
          Center(
            child: RaisedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => HomePage());
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
          ),
        ],
      ),
    );
  }
}

class Portofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portofolio'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: ClipRRect(
              child: Image.asset(
                "img/KNY_MugenTrain.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => Portofolio());
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
          )
        ],
      ),
    );
  }
}

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Icon(
                Icons.account_circle,
                size: 75,
                color: Colors.blueAccent,
              ),
            ),
            Center(
              child: Text("Nama : Teddy Latief Miftahur Rizqi\n "
                  "Nim : 362055401023\n"
                  "Email : teddylatief0009@gmail.com"),
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => contact());
                  Navigator.pop(context);
                },
                child: Text("Back"),
              ),
            )
          ],
        ));
  }
}
