class Project {
  final String title;
  final String description;
  final int targetAmount;
  final int duration; // ระยะเวลาโครงการ
  final int receiveAmount; // จำนวนเงินที่ได้รับบริจาคมาแล้ว
  final int donateCount; // จำนวนครั้งที่บริจาคเข้ามา
  final String imageUrl;
  final String longDes;
  final String period;
  final String location;
  Project({
    required this.title,
    required this.description,
    required this.targetAmount,
    required this.duration,
    required this.receiveAmount,
    required this.donateCount,
    required this.imageUrl,
    required this.longDes,
    required this.period,
    required this.location,
  });
}
