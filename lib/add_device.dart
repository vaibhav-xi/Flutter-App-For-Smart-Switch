import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AddDevice extends StatefulWidget {
  const AddDevice({super.key});

  @override
  _AddDeviceState createState() => _AddDeviceState();
}

class _AddDeviceState extends State<AddDevice> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ipController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Add Device"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0), // Add right padding to the action
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   PageTransition(
                //     type: PageTransitionType.fade,
                //     child: const AddDevice(),
                //   )
                // );
              },
              child: const Icon(Icons.done),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20,),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Name',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _ipController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'IP',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}