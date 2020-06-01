class Post {
  final String title;
  final String author;
  final String imageUrl;

  const Post({this.title, this.author, this.imageUrl});
}

List<Post> posts = [
  Post(title: 'test1', author: 'author1', imageUrl: 'assets/images/01.jpg'),
  Post(title: 'test2', author: 'author2', imageUrl: 'assets/images/03.jpg'),
  Post(title: 'test3', author: 'author3', imageUrl: 'assets/images/04.jpg'),
  Post(title: 'test4', author: 'author4', imageUrl: 'assets/images/05.jpg'),
];
