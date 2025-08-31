import 'package:flutter/material.dart';

import '../../../../Data/Model/Camel/camel.model.dart';
import 'camel_map_screen.dart';

class CamelDetailsScreen extends StatelessWidget {
  final Camel camel;

  CamelDetailsScreen({required this.camel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange.shade100, Colors.orange.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Container(
            width: double.infinity,
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.all(16),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.orange.shade400,
                      child: Icon(Icons.pets, size: 50, color: Colors.white),
                    ),
                    SizedBox(height: 16),
                    Text(
                      camel.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade800,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Age: ${camel.age}',
                      style:
                          TextStyle(fontSize: 18, color: Colors.brown.shade600),
                    ),
                    Text(
                      'Gender: ${camel.gender.toString().split('.').last}',
                      style:
                          TextStyle(fontSize: 18, color: Colors.brown.shade600),
                    ),
                    Text(
                      'Tracker ID: ${camel.trackerBarCode}',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange.shade700),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => CamelMapScreen(
                              camel: camel,
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade500,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Track Camel',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
