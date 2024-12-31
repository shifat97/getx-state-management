import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('GetX SnackBar'),
              onTap: () {
                Get.snackbar(
                  'Md. Shifat Bin Reza',
                  'Daffodil International University',
                  backgroundColor: Colors.green,
                  colorText: Colors.white,
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('GetX Default Dialog'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Hello World',
                  content: const Text('Hello World'),
                  cancel: TextButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: Text('Cancel')),
                  confirm: TextButton(onPressed: () {}, child: Text('Confirm')),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('GetX BottomSheet'),
              // subtitle: const Text('GetX BottomSheet'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text('Light Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          }
                        ),
                        ListTile(
                          title: const Text('Dark Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          }
                        ),
                      ],
                    ),
                  ),
                );
              }
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('GetX Navigation'),
              onTap: () {
                Get.toNamed('/screenOne', arguments: ['Md. Shifat Bin Reza']);
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('GetX Responsive'),
              onTap: () {
                Get.toNamed('/screenTwo');
              }
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Get.snackbar(
            'Md. Shifat Bin Reza',
            'Daffodil International University',
            backgroundColor: Colors.blue,
            colorText: Colors.white,
            snackPosition: SnackPosition.TOP,
          );
        },
        child: Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}
