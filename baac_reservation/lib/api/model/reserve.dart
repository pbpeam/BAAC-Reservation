class Reserve{
  final String roomID;
  final String topic;
  final String chairman;
  final String date;
  final String timeStart;
  final String timeEnd;
  
  final String createdAt;
  final String updatedAt;

  Reserve({
    this.roomID,
    this.topic,
    this.chairman,
    this.date,
    this.timeStart,
    this.timeEnd,
    
    this.createdAt,
    this.updatedAt,
  });

  factory Reserve.fromJSON(Map<String, dynamic> json) => Reserve(
    roomID: json['roomID'],
    topic: json['topic'],
    chairman: json['chairman'],
    date: json['date'],
    timeStart: json['timeStart'],
    timeEnd: json['timeEnd'],

    
    createdAt: json['created_at'],
    updatedAt: json['updated_at'],
  );
}