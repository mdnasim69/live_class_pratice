import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.greenAccent,
        title: const Text(
          'Nasim',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              '',
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                shadowColor: Colors.green,
                elevation: 10,
                side: const BorderSide(color: Colors.yellow, width: 3.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35)),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'nasim',
              ),
            ),
            const Text(
              '',
            ),
            GestureDetector(
              onTap: () {
                print('this is an image');
              },
              child: Image.asset(
                'asset/images/download.jpeg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            GestureDetector(
              onTap: () {
                print('i am fine');
              },
              child: const Text(
                "hello all ,how are you all ? "
                "i hope you are well",
                style: TextStyle(fontSize: 26, color: Colors.cyanAccent),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.code_sharp),
              style: IconButton.styleFrom(
                foregroundColor: Colors.yellow,
                backgroundColor: Colors.green,
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 18),
                iconSize: 50,
                side: const BorderSide(color: Colors.black, width: 2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              splashColor: Colors.cyanAccent,
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    barrierColor: Colors.lightGreenAccent,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Delete'),
                        content: const Text(
                          'Do you want to delet',
                          style: TextStyle(fontSize: 20),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'NO',
                                style: TextStyle(fontSize: 20),
                              )),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Yes',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      );
                    });
              },
              child: const Text(
                'delete',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.brown,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.add),
      ),
    );
  }
}
