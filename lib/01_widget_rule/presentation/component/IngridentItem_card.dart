import 'package:flutter/material.dart';
import 'package:learn_flutter_together/01_widget_rule/data/model/ingridentItem.dart';

class IngridentitemCard extends StatelessWidget {

  final Ingridentitem ingridentitem;
  const IngridentitemCard({super.key, required this.ingridentitem});

  @override
  Widget build(BuildContext context) {

    List<Map<String, dynamic>> dataList = [
  {
    "title": "토마토",
    "imageUrl": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Tomato_je.jpg/1200px-Tomato_je.jpg",
    "weight": "500g",
  },
  {
    "title": "사과",
    "imageUrl": "https://img.hankyung.com/photo/202403/AA.36104679.1.jpg",
    "weight": "1000g",
  },
  {
    "title": "복숭아",
    "imageUrl": "https://img.hankyung.com/photo/202403/AA.36104679.1.jpg",
    "weight": "500g", 
  },
];
      return Scaffold(
      
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          final item = dataList[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      item['imageUrl'],
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    item['weight'],
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: IngridentitemCard(
      ingridentitem: Ingridentitem(
        id: 1,
        imageUrl: '',
        title: '',
        weight: '',
        dataList: [],
      ),
    ),
  ));
}

