class UserNotification {
  final String imageUrl;
  final String content;
  final String time;

  UserNotification({
    required this.imageUrl,
    required this.content,
    required this.time
  });
}

List<UserNotification> notifications = [
  new UserNotification(imageUrl: 'assets/goalcast.png', content: 'Goal posted a new video', time: '3 hours ago'),
  new UserNotification(imageUrl: 'assets/playstation.jpg', content: 'Plays posted a new video', time: '8 hours ago'),
  new UserNotification(imageUrl: 'assets/xbox.jpeg', content: 'Xbox posted a new video', time: '9 hours ago'),
  new UserNotification(imageUrl: 'assets/reddit.png', content: 'Reddit posted a new video', time: '22 hours ago'),
  new UserNotification(imageUrl: 'assets/linkedIn.jpg', content: 'Linkedin posted a new video', time: '1 day ago'),


];