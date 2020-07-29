class Room{
  final String room;

  final String createdAt;
  final String updatedAt;

  Room({
    this.room,

    this.createdAt,
    this.updatedAt,
  });

  factory Room.fromJSON(Map<String, dynamic> json) => Room(
    room: json['room'],
    
    createdAt: json['created_at'],
    updatedAt: json['updated_at'],
  );
}