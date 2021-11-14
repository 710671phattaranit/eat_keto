class EatItem{
  final int id;
  final String name;
  final int gram;
  final double cal;
  final String nutrient;
  final String image;

  EatItem({
    required this.id,
    required this.name,
    required this.gram,
    required this.cal,
    required this.nutrient,
    required this.image
  });

  @override
  String toString() {
    return '$id: $name ปริมาณ $gram กรัม พลังงานที่ได้รับ $cal กิโลแคลอรี่  คุณค่าทางโภชนาการ $nutrient';

  }
}