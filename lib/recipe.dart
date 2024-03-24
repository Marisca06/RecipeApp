class Recipe {
  String label;
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe('Rawon', 'assets/rawon.jpg', 2, [
      Ingredient(500, 'gram', 'daging sapi'),
      Ingredient(1, 'buah', 'buah keluwek'),
      Ingredient(3, 'batang', 'serai'),
      Ingredient(5, 'lembar', 'daun salam'),
      Ingredient(1, 'batang', 'sereh'),
      Ingredient(2, 'sendok', 'garam'),
      Ingredient(1, 'sendok', 'gula merah'),
    ]),
    Recipe('Rujak Cingur', 'assets/rujak.jpg', 4, [
      Ingredient(1, 'ekor', 'cingur sapi'),
      Ingredient(1, 'buah', 'nanas'),
      Ingredient(1, 'buah', 'timun'),
      Ingredient(2, 'buah', 'kerupuk'),
      Ingredient(2, 'sendok', 'bumbu rujak'),
    ]),
    Recipe('Lontong Balap', 'assets/lontong.jpg', 1, [
      Ingredient(1, 'batang', 'tauge'),
      Ingredient(2, 'sendok', 'bumbu petis'),
      Ingredient(1, 'sendok', 'bawang goreng'),
      Ingredient(1, 'buah', 'telur ayam'),
      Ingredient(1, 'sendok', 'kecap manis'),
    ]),
    Recipe('Sate Klopo', 'assets/sate.jpg', 24, [
      Ingredient(500, 'gram', 'daging sapi'),
      Ingredient(20, 'butir', 'kelapa muda'),
      Ingredient(5, 'siung', 'bawang putih'),
      Ingredient(3, 'sendok', 'ketumbar bubuk'),
      Ingredient(3, 'sendok', 'gula merah'),
    ]),
    Recipe('Wedang Ronde', 'assets/ronde.jpg', 1, [
      Ingredient(200, 'gram', 'tepung ketan'),
      Ingredient(200, 'gram', 'kacang tanah'),
      Ingredient(100, 'gram', 'gula merah'),
      Ingredient(5, 'lembar', 'daun pandan'),
      Ingredient(3, 'lembar', 'jahe'),
    ]),
    Recipe('Soto Ayam Lamongan', 'assets/soto.jpg', 4, [
      Ingredient(1, 'ekor', 'ayam kampung'),
      Ingredient(1, 'batang', 'serai'),
      Ingredient(2, 'lembar', 'daun jeruk'),
      Ingredient(2, 'sendok', 'bawang goreng'),
      Ingredient(2, 'sendok', 'minyak'),
    ]),
    Recipe('Tahu Tek', 'assets/tahutek.jpg', 2, [
      Ingredient(4, 'buah', 'tahu'),
      Ingredient(1, 'butir', 'telur'),
      Ingredient(2, 'sendok', 'bawang goreng'),
      Ingredient(1, 'sendok', 'ketumbar bubuk'),
      Ingredient(2, 'sendok', 'gula merah'),
      Ingredient(1, 'sendok', 'kecap manis'),
    ]),
    Recipe('Nasi krawu', 'assets/krawu.jpg', 5, [
      Ingredient(500, 'gram', 'nasi putih'),
      Ingredient(1, 'ekor', 'ayam'),
      Ingredient(100, 'gram', 'serundeng'),
      Ingredient(1, 'buah', 'mentimun'),
      Ingredient(1, 'buah', 'lalapan'),
      Ingredient(50, 'gram', 'sambal'),
    ]),
    Recipe(
      'Nasi Goreng Jawa',
      'assets/nasi.jpg',
      3,
      [
        Ingredient(3, 'piring', 'nasi dingin'),
        Ingredient(200, 'gram', 'daging ayam, potong dadu'),
        Ingredient(2, 'butir', 'telur, kocok lepas'),
        Ingredient(3, 'batang', 'daun bawang, iris halus'),
        Ingredient(2, 'sendok', 'saus tomat'),
        Ingredient(2, 'sendok', 'kecap manis'),
      ],
    ),
    Recipe(
      'Bakwan Malang',
      'assets/bakwan.jpg',
      6,
      [
        Ingredient(500, 'gram', 'daging sapi giling'),
        Ingredient(200, 'gram', 'tepung sagu tani'),
        Ingredient(3, 'butir', 'telur'),
        Ingredient(2, 'sendok', 'bawang putih goreng, haluskan'),
        Ingredient(2, 'sendok', 'merica bubuk'),
        Ingredient(1, 'sendok', 'garam'),
      ],
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
