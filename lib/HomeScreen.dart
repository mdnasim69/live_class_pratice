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
            Text('NASiM'),
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
                                backgroundColor: Colors.blue,),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('No',style: TextStyle(color: Colors.black),)),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(width: 2, color: Colors.black),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                backgroundColor: Colors.blue),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Yes',style: TextStyle(color: Colors.black),)),
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
                isScrollControlled:true,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  useSafeArea:true,
                  enableDrag:true,
                  backgroundColor:Colors.green,
                  context: context,
                  builder: (context) {
                    return const Column(children: [Row()],
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
    );
  }
}
