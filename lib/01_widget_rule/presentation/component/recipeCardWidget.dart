import 'package:flutter/material.dart';
import 'package:learn_flutter_together/01_widget_rule/data/model/recipe.dart';

class Recipecardwidget extends StatelessWidget {
  final Recipe recipe;
  const Recipecardwidget({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(recipe.imgUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  SizedBox(width: 4),
                  Text('4.0', style: TextStyle(color: Colors.white, fontSize: 12)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  recipe.foodName,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('By ${recipe.chefName}', style: const TextStyle(color: Colors.white)),
                    Spacer(),
                    Row(
                      children: [
                        const Icon(Icons.access_time, size: 16, color: Colors.white),
                        const SizedBox(width: 4),
                        Text('${recipe.time} min', style: TextStyle(color: Colors.white)),
                        const SizedBox(width: 4),
                        const Icon(Icons.bookmark_border, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Recipe App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Recipecardwidget(
                recipe: Recipe(
                  foodName: 'Pasta Carbonara',
                  chefName: 'Chef John',
                  time: 30,
                  imgUrl:
                      'https://static01.nyt.com/images/2021/02/14/dining/carbonara-horizontal/carbonara-horizontal-verticalTwoByThree735-v2.jpg',
                ),
              ),
              Recipecardwidget(
                recipe: Recipe(
                  foodName: 'Pizza Margherita',
                  chefName: 'Chef Maria',
                  time: 45,
                  imgUrl:
                      'https://uk.ooni.com/cdn/shop/articles/20220211142645-margherita-9920.jpg?crop=center&height=800&v=1660843558&width=800',
                ),
              ),
              Recipecardwidget(
                recipe: Recipe(
                  foodName: 'Classic Burger',
                  chefName: 'Chef Mike',
                  time: 20,
                  imgUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeCacsKFVUFTWs2O_nNZ-liKRkUT8eU8zBHQ&s',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
