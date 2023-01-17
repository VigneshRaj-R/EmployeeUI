import 'package:flutter/material.dart';
import 'package:flutter_application_1/homescreen.dart';

class EmployeeTile extends StatelessWidget {
  const EmployeeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
          child: const Icon(
            Icons.home,
            color: Color.fromARGB(255, 4, 73, 130),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 224, 216, 216),
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            'Search Candidate',
            style: TextStyle(
              color: Color.fromARGB(255, 4, 73, 130),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(suffixIcon: Icon(Icons.search)),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 4, 73, 130),
              ),
              onPressed: () {},
              child: const Text('Filter'),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              width: 350,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Card(
                child: Column(
                  children: const [
                    Text('Name:Vishal Sundar'),
                    Text('Email:jvisha@gmial.com')
                  ],
                ),
              ),
            ),
            Container(
              height: 300,
              width: 350,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Card(
                child: Column(
                  children: const [
                    Text('Name:muhammed1'),
                    Text('Email:yousuf@gmail.com')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
