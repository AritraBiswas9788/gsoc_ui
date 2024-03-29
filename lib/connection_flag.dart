import 'package:flutter/material.dart';

class ConnectionFlag extends StatelessWidget {
  ConnectionFlag({required this.status, required this.backgroundColor, required this.selectedText, required this.unSelectedText});
  final bool status;
  final Color backgroundColor;
  final String selectedText;
  final String unSelectedText;

  @override
  Widget build(BuildContext context) {
    Color color = status ? Colors.green : Colors.red;
    String label = status ? 'CONNECTED' : 'DISCONNECTED';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 22.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: Colors.white54,
            boxShadow: [
              BoxShadow(
                color: backgroundColor
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
            children: [
              Icon(
                Icons.circle,
                color: color,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                label,
                style: TextStyle(color: color, fontWeight: FontWeight.bold,fontSize: 25.0),
              )
            ],
                  ),
          ),
      ),
    );
  }
}
