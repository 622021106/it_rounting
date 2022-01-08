import 'package:flutter/material.dart';
import 'secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าแรก'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'หน้าหลัก',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () {
                  var rout = MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  );
                  Navigator.push(context, rout);
                },
                child: const Text(
                  'หน้าถัดไป',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
