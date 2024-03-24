import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Makanan Tradisional Jawa Timur',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.recipe.label,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        backgroundColor: const Color(0xFFFFBE98),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 250,
                    width: 270,
                    child: Image.asset(
                      widget.recipe.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      ),
                      Text(
                        '4.9',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.access_time),
                      ),
                      Text(
                        '25 Menit',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF7DED0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Geser sesuai jumlah sajian yang diinginkan:',
                      style: TextStyle(fontSize: 18),
                    ),
                    Slider(
                      min: 1,
                      max: 10,
                      divisions: 10,
                      label: '${_sliderVal * widget.recipe.servings} servings',
                      value: _sliderVal.toDouble(),
                      onChanged: (newValue) {
                        setState(() {
                          _sliderVal = newValue.round();
                        });
                      },
                      activeColor: const Color(0xFFFFBE98),
                      inactiveColor: Colors.black,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Bahan:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Expanded(
                      child: ListView.builder(
                        itemCount: widget.recipe.ingredients.length,
                        itemBuilder: (BuildContext context, int index) {
                          final ingredient = widget.recipe.ingredients[index];
                          return Text(
                            '${ingredient.quantity * _sliderVal} ${ingredient.measure} ${ingredient.name}',
                            style: TextStyle(fontSize: 16),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
