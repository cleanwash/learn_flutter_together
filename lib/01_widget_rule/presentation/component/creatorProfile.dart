import 'package:flutter/material.dart';
import 'package:learn_flutter_together/01_widget_rule/data/model/creatorProfile.dart';

class CreatorprofileCard extends StatelessWidget {
  final Creatorprofile creatorprofile;

  const CreatorprofileCard({Key? key, required this.creatorprofile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // 프로필 이미지 부분
            ClipOval(
              child: Image.network(
                creatorprofile.imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            // 이름과 장소 부분
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 이름
                      Text(
                        creatorprofile.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // 장소
                      Row(
                        children: [
                          const Icon(Icons.place,
                              color: Colors.green), // 초록색 아이콘으로 변경
                          Text(
                            creatorprofile.place,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Follow 버튼
            ElevatedButton(
              onPressed: () {
                print("Follow button pressed");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text("Follow"),
            ),
          ],
        ),
      ),
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Creatorprofile peterParker = Creatorprofile(
//       imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Spiderman.JPG/800px-Spiderman.JPG',
//       name: 'Peter Parker',
//       place: 'Brooklyn',
//     );

//     // Mary Jane Watson의 프로필
//     Creatorprofile maryJane = Creatorprofile(
//       imageUrl: 'https://i.redd.it/pjl0c1p753s71.jpg',
//       name: 'Mary Jane Watson',
//       place: 'New York City',
//     );

//     // Miles Morales의 프로필
//     Creatorprofile milesMorales = Creatorprofile(
//       imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRigG9ZU07E582cCs5hUm-k6m-5o0Ev_04laA&s',
//       name: 'Miles Morales',
//       place: 'Brooklyn',
//     );

//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Spiderman Characters'),
//         ),
//         body: ListView(
//           children: [
//             // Peter Parker 카드
//             CreatorprofileCard(creatorprofile: peterParker),
//             // Mary Jane Watson 카드
//             CreatorprofileCard(creatorprofile: maryJane),
//             // Miles Morales 카드
//             CreatorprofileCard(creatorprofile: milesMorales),
//           ],
//         ),
//       ),
//     );
//   }
// }
