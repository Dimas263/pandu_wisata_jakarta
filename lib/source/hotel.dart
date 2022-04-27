import 'package:flutter/material.dart';

class hotelPage extends StatefulWidget {

  @override
  State<hotelPage> createState() => _hotelPageState();
}

class _hotelPageState extends State<hotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          ' Hotel',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'), fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            // TODO: Isi codingan disini
            child: Text('Isi codingan disini Isi codingan disini Isi codingan disini Isi codingan disini Isi codingan disini'),
          ),
        ),
      ),
    );
  }
}
