import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioBooksHomePage extends StatelessWidget {
  const AudioBooksHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/Logo.png"),
              const ImageIcon(
                AssetImage("assets/images/Setting.png"),
                color: Color(0xff4838D1),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionTitle('Categories', () {}),
                const SizedBox(height: 16),
                _buildCategories(),
                const SizedBox(height: 32),
                _buildSectionTitle('Recommended For You', () {}),
                const SizedBox(height: 16),
                _buildHorizontalBookList(),
                const SizedBox(height: 32),
                _buildSectionTitle('Best Seller', () {}),
                const SizedBox(height: 16),
                _buildHorizontalBookContainerList(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/Home.png")),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/Search.png")),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/Document.png")),
            label: 'Library',
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color(0xff010104),
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              'See more',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xff4838D1),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategories() {
    final categories = ['Art', 'Business', 'Comedy', 'Drama'];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: categories
              .map(
                (category) => Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5FA),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Text(
                      category,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff2E2E5D),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget _buildHorizontalBookList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildBookItem(
            image: 'assets/images/book2.png',
          ),
          _buildBookItem(
            image: 'assets/images/book1.png',
          ),
        ],
      ),
    );
  }

  Widget _buildBookItem({
    required String image,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 400,
        width: 280,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 380,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHorizontalBookContainerList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildBookContainer(),
          const SizedBox(width: 12),
          _buildBookContainer(),
        ],
      ),
    );
  }

  Widget _buildBookContainer() {
    return Container(
      width: 315,
      height: 144,
      decoration: BoxDecoration(
        color: const Color(0xffF5F5FA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                "assets/images/book3.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Light Mage",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff010104),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Laurie Forest",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff6A6A8B),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
