class Message {
  final String message;
  final String senderUsername;
  final DateTime sentAt;
  var file;

  Message({
    required this.message,
    required this.senderUsername,
    required this.sentAt,
    this.file
  });

  factory Message.fromJson(Map<String, dynamic> message) {
    return Message(
      message: message['message'],
      senderUsername: message['senderUsername'],
      sentAt: DateTime.fromMillisecondsSinceEpoch(message['sentAt']),
      file: message['file']
    );
  }
}