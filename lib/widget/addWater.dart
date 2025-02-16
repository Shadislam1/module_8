import 'package:flutter/material.dart';
class addWater extends StatelessWidget {
  final int amount;
  IconData ? icon;
  final VoidCallback onClick;
   addWater({
    super.key, required this.amount, required this.icon,
     required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(onPressed: onClick,
          label: Text("+ ${amount}ml",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
          icon: Icon(icon ?? Icons.water_drop,color: Colors.white,),),
      ),
    );
  }
}