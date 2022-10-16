import 'package:cycle/bicycle_detail_page.dart';
import 'package:flutter/material.dart';

class ccard extends StatefulWidget {
  const ccard({super.key});

  @override
  State<ccard> createState() => _ccardState();
}

class _ccardState extends State<ccard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 1.5,
        child: Card(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return BicycleDetailPage(
                    img:
                        "https://image.made-in-china.com/2f0j00GMdETbNKLJcL/Electric-Bicycle-TDE03Z-.jpg");
              }));
            },
            child: Stack(
              children: [
                Positioned(
                    left: 16,
                    top: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Go Cycle",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Electric Bike",
                          style: TextStyle(fontSize: 12),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            "13\$",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 20),
                          ),
                        )
                      ],
                    )),
                Positioned(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Range",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text("50 mil"),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Speed",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text("75kmh"),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Power",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text("387wh"),
                            )
                          ],
                        ),
                        Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(color: Colors.orange),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Icon(Icons.arrow_forward),
                          ),
                        ),
                      ],
                    )),
                Positioned(
                  child: Container(
                    height: 72,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://image.made-in-china.com/2f0j00GMdETbNKLJcL/Electric-Bicycle-TDE03Z-.jpg",
                            ),
                            fit: BoxFit.fitHeight)),
                  ),
                  right: 16,
                  top: 8,
                )
              ],
            ),
          ),
        ));
  }
}
