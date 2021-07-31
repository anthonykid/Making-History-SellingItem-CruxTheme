import 'package:flutter/material.dart';
import 'model/inside.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: Text(
            'Histori Penjualan.'),
      ),
      backgroundColor: Colors.green[400],
      body: Card(
        margin: EdgeInsets.fromLTRB(25, 40, 25, 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
              child: ListView.builder(
          itemBuilder: (context, index) {
            final Inside data = InsideList[index];
            return Card(
              margin: EdgeInsets.all(5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: InkWell(
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 1, child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.article_outlined,size: 40,color: Colors.green[700],),
                      )),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                data.name,
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(data.date),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              data.price,
                              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: InsideList.length,
        ),
      ),
    );
  }
}
