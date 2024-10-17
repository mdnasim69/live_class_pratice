import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('NASIM'),
          ],
        ),
        toolbarHeight: 60,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 25,
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      title: Text('delete'),
                      titleTextStyle: TextStyle(color: Colors.black),
                      content: Text('Do you want to delete'),
                      actions: [
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'No',
                              style: TextStyle(color: Colors.black),
                            )),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(width: 2, color: Colors.black),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                backgroundColor: Colors.blue),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Yes',
                              style: TextStyle(color: Colors.black),
                            )),
                      ],
                    );
                  });
            },
            icon: const Icon(Icons.delete),
            style: IconButton.styleFrom(iconSize: 35),
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  useSafeArea: true,
                  enableDrag: true,
                  backgroundColor: Colors.green,
                  context: context,
                  builder: (context) {
                    return const Column(
                      children: [Row()],
                    );
                  });
            },
            icon: const Icon(Icons.settings),
            style: IconButton.styleFrom(iconSize: 35),
            padding: const EdgeInsets.symmetric(horizontal: 10),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              'Loagin Information',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: false,
                maxLength: 11,
                maxLines: 1,
                decoration: InputDecoration(
                    hintText: 'Phone',
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    prefixIcon: Icon(Icons.phone)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: false,
                maxLines: 1,
                decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email Address',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    prefixIcon: Icon(Icons.email)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                maxLength: 16,
                maxLines: 1,
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    prefixIcon: Icon(Icons.password_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(11.5, 0, 11.5, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Sing up',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        padding:
                            EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                        side: BorderSide(color: Colors.black, width: 2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        padding:
                            EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                        side: BorderSide(color: Colors.black, width: 2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
