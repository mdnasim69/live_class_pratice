import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Hello all how are you?'),
            const SizedBox(
              height: 10,
            ),
            IconButton(
                style: IconButton.styleFrom(
                    backgroundColor: Colors.white38,
                    foregroundColor: Colors.black,
                    side:
                        const BorderSide(color: Colors.indigoAccent, width: 4),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    iconSize: 40),
                onPressed: () {},
                icon: const Icon(Icons.cached)),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              splashColor: Colors.indigoAccent,
              onTap: () {
                showDialog(
                    barrierColor: Colors.yellow,
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title:
                            const Text("nasim", style: TextStyle(fontSize: 20)),
                        content: const Text('are you nasim',
                            style: TextStyle(fontSize: 20)),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'NO',
                                style: TextStyle(fontSize: 20),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'YES',
                                style: TextStyle(fontSize: 20),
                              )),
                        ],
                      );
                    });
              },
              child: const Text(
                'nasim',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.green,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black, width: 2),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  backgroundColor: Colors.yellow,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      useSafeArea: true,
                      enableDrag: true,
                      elevation: 20,
                      context: context,
                      backgroundColor: Colors.yellow,
                      //barrierColor: Colors.green.shade100,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      builder: (context) {
                        return const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('nasim'),
                            Text('nasim'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('nasim'),
                                SizedBox(
                                  width: 30,
                                  height: 30,
                                ),
                                Text('nasim')
                              ],
                            ),
                            Divider(
                              height: 100,
                            ),
                          ],
                        );
                      });
                },
                child: const Text('ModalBottom')),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
                maxLength: 11,
                obscureText: false,
                maxLines: 1,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    hintText: 'phone',
                    labelText: 'phone number',
                    labelStyle: const TextStyle(),
                    counterStyle: const TextStyle(fontSize: 13, color: Colors.black),
                    prefixIcon: const Icon(Icons.phone),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.green)),
                    helperStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade100,
                        fontSize: 25)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
                maxLength: 50,
                minLines: 1,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'email',
                    labelText: 'Email address',
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.green, width: 3),
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
                maxLength: 16,
                minLines: 1,
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'password',
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.black,
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 45, vertical: 13),
                        side: const BorderSide(width: 2, color: Colors.black),
                      ),
                      child: const Text('LOGIN'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
