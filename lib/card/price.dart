import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class pcard extends StatefulWidget {
  const pcard({super.key});

  @override
  State<pcard> createState() => _pcardState();
}

class _pcardState extends State<pcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width - 40,
      height: 120,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 3, top: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned(
              left: 16,
              top: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order ID :F932032",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Cycle ID : Cy304920",
                    style: TextStyle(fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      "Cycle Cost :",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text(
                      "13\$",
                      style: TextStyle(color: Colors.orange, fontSize: 22),
                    ),
                  )
                ],
              )),
          Positioned(
              bottom: 10,
              right: 10,
              child: Text(
                "20-Aug , 10:50 AM",
                style: TextStyle(fontSize: 12),
              ))
        ],
      ),
    );
  }
}
