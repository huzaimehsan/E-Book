import 'package:ebook/register.dart';
import 'package:flutter/material.dart';


class BookListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Book Dashboard",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0, // Remove app bar shadow
        actions: [
          IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyRegister()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookTile(book: books[index]);
        },
      ),
    );
  }
}

class BookTile extends StatelessWidget {
  final Book book;

  const BookTile({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        book.imagePath,
        width: 50,
        height: 100,
        fit: BoxFit.cover,
      ),
      title: Text(book.title),
      subtitle: Text(book.author),
      onTap: () {
        // Handle book tap
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookDetailsScreen(book: book),
          ),
        );
      },
    );
  }
}

class BookDetailsScreen extends StatelessWidget {
  final Book book;

  const BookDetailsScreen({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Book Title: ${book.title}"),
            Text("Author: ${book.author}"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the dashboard
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}

class Book {
  final String title;
  final String author;
  final String imagePath;
  final String pdfPath;

  Book({
    required this.title,
    required this.author,
    required this.imagePath,
    required this.pdfPath,
  });
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Text(
          "This is the second screen",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

// Sample book data
final List<Book> books = [
  Book(
    title: 'Book 1',
    author: 'Author 1',
    imagePath: 'assets/images/book1.jpg',
    pdfPath: 'assets/books/book1.pdf',
  ),
  Book(
    title: 'Book 2',
    author: 'Author 2',
    imagePath: 'assets/images/book2.jpg',
    pdfPath: 'assets/books/book2.pdf',
  ),
  // Add more books as needed
];
