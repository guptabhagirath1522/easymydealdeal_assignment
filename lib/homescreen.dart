import 'package:carousel_slider/carousel_slider.dart';
import 'package:easymydealdeal_assignment/component/items.dart';
import 'package:easymydealdeal_assignment/component/productcard.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(179, 169, 169, 169)
                          .withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/icons/location.png', width: 40),
                      // icon: const Icon(Icons.location_on),
                      onPressed: () {},
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Deliver to',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 8,
                            ),
                          ),
                        ),
                        Text(
                          '201301',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      // icon: const Icon(Icons.search),
                      icon: Image.asset('assets/icons/search.png', width: 40),
                      onPressed: () {},
                    ),
                    IconButton(
                      // icon: const Icon(Icons.favorite_outline),
                      icon: Image.asset('assets/icons/favorite.png', width: 40),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.shopping_cart_outlined),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const Image(
                        image: AssetImage('assets/images/image1.png'),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 10),
            AnimatedSmoothIndicator(
              activeIndex: _currentIndex,
              count: 5,
              effect: const ExpandingDotsEffect(),
            ),
            const SizedBox(height: 20),
            Text(
              'BUY FURNITURE',
              style: GoogleFonts.marcellus(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithPriceDrop(
                    imagePath: 'assets/icons/living.png',
                    text: 'Living Room',
                    showPriceDrop: true,
                  ),
                  IconWithPriceDrop(
                    imagePath: 'assets/icons/bed.png',
                    text: 'Bedroom',
                    showPriceDrop: true,
                  ),
                  IconWithPriceDrop(
                    imagePath: 'assets/icons/storage.png',
                    text: 'Storage',
                    showPriceDrop: false,
                  ),
                  IconWithPriceDrop(
                    imagePath: 'assets/icons/study.png',
                    text: 'Study',
                    showPriceDrop: false,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const IconWithPriceDrop(
                    imagePath: 'assets/icons/dining.png',
                    text: 'Dining',
                    showPriceDrop: false,
                  ),
                  const IconWithPriceDrop(
                    imagePath: 'assets/icons/table.png',
                    text: 'Tables',
                    showPriceDrop: false,
                  ),
                  const IconWithPriceDrop(
                    imagePath: 'assets/icons/chairs.png',
                    text: 'Chairs',
                    showPriceDrop: false,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 28.0,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.green,
                          ),
                          child: const Text(
                            'NEW',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Image.asset(
                        'assets/icons/z.png',
                        height: 50.0,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Z Rated',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const IconWithPriceDrop(
              imagePath: 'assets/icons/deals.png',
              text: 'Best Deals',
              showPriceDrop: false,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.3,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const Image(
                      image: AssetImage('assets/images/image2.png'),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.3,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const Image(
                      image: AssetImage('assets/images/image3.png'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Offers and Discounts',
                        style: GoogleFonts.roboto(fontSize: 16)),
                  ),
                  const Spacer(),
                  Text('See All', style: GoogleFonts.roboto(fontSize: 12)),
                  Icon(Icons.arrow_forward, size: 12),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const Image(
                        image: AssetImage('assets/images/image4.png'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const Image(
                        image: AssetImage('assets/images/image4.png'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const Image(
                        image: AssetImage('assets/images/image4.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    child: Image.asset('assets/icons/percent.png', width: 60),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Deals of the Day',
                          style: GoogleFonts.roboto(fontSize: 16)),
                      Text(
                        'To Buy',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text('View All', style: GoogleFonts.roboto(fontSize: 12)),
                  const Icon(Icons.arrow_forward, size: 12),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    children: [
                      ProductCard(
                        imageUrl: 'assets/images/sofa.png',
                        title: 'Flex 3 Seater Magic Blue Sofa',
                        discountPercentage: 72,
                        price: '10,499',
                      ),
                      ProductCard(
                        imageUrl: 'assets/images/sofa.png',
                        title: 'Flex 3 Seater Magic Blue Sofa',
                        discountPercentage: 72,
                        price: '10,499',
                      ),
                      ProductCard(
                        imageUrl: 'assets/images/sofa.png',
                        title: 'Flex 3 Seater Magic Blue Sofa',
                        discountPercentage: 72,
                        price: '10,499',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
