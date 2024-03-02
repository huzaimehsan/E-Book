class BookStore extends StatefulWidget {
  @override
  _BookStoreState createState() => _BookStoreState();
}

class _BookStoreState extends State<BookStore> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    BookPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Store'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Books',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}

class BookPage extends StatelessWidget {
  final List<String> books = [
    'assets/book8.png',
    'assets/books1.png',
    'assets/books2.png',
    'assets/books3.jpg',
    'assets/books4.jpg',
    'assets/books5.jpg',
    'assets/books6.png',
    'assets/books7.png',
    'assets/books8.png',
    // Add more book assets as needed
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: books.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemBuilder: (context, index) {
        return BookItem(assetPath: books[index]);
      },
    );
  }
}

class BookItem extends StatelessWidget {
  final String assetPath;

  const BookItem({required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            assetPath,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8.0),
        ElevatedButton(
          onPressed: () {
            // Add your buy logic here
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('open pdf'),
                  content: Text('Do you want to buy this book?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Add your buy action here
                        Navigator.of(context).pop();
                      },
                      child: Text('Buy'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Buy'),
        ),
      ],
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Cart Page'),
    );
  }
}