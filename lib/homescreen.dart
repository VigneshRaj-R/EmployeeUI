import 'package:flutter/material.dart';
import 'package:flutter_application_1/employee.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.home,
            color: Color.fromARGB(255, 4, 73, 130),
          ),
          backgroundColor: const Color.fromARGB(255, 224, 216, 216),
          title: const Center(
            child: Text(
              'Jobs',
              style: TextStyle(
                color: Color.fromARGB(255, 4, 73, 130),
              ),
            ),
          ),
          actions: const [
            Icon(
              Icons.notifications,
              color: Color.fromARGB(255, 4, 73, 130),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(25),
                color: const Color.fromARGB(255, 4, 73, 130),
                width: 350.0,
                height: 100.0,
                child: Center(
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Employer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Find the Perfect Employee',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            Container(
              width: 300,
              height: 100,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent, width: 3)),
              child: Center(
                  child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EmployeeTile()),
                  );
                },
                child: const Text(
                  'Employee',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontWeight: FontWeight.w600),
                ),
              )),
            )
          ],
        ));
  }
}
