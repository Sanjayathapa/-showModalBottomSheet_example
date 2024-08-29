class Attendance {
  final String name;
  final int daysPresent;
  final int daysAbsent;
  final int daysLate;
 
  Attendance({
    required this.name,
    required this.daysPresent,
    required this.daysAbsent,
    required this.daysLate,
  });
  
}

final attendance = Attendance(
  name: 'Sandesh thapa',
  daysPresent: 19,
  daysAbsent: 7,
  daysLate: 2,

);