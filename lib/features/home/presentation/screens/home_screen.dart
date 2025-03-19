import 'package:flutter/material.dart';
import 'package:t_urban_india/core/constants/constant_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome to ',
                      style:
                          Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontSize: 28,
                                color: ConstantColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                    TextSpan(
                      text: 'T-urban',
                      style:
                          Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontSize: 28,
                                color: ConstantColors.primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                    TextSpan(
                      text: '\nIndia',
                      style:
                          Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontSize: 28,
                                color: ConstantColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 15),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: ConstantColors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Light shadow color
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: const Offset(0, 3), // Slight downward shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search turbans here",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 15, color: ConstantColors.grey),
                  border: InputBorder.none,
                  suffixIcon: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      color: ConstantColors.primaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.search,
                      size: 30,
                      color: ConstantColors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Popular Turbans',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 20,
                      color: ConstantColors.black,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 150, // Fixed height for carousel
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0, 0.5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: [
                            Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZQitlcF-Ld6vazBhYU-o2BNqxJ9zoxH-_6g&s',
                              fit: BoxFit.cover,
                              width: 200, // Match parent width
                              height: double.infinity, // Fit available height
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: double.infinity,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                decoration: BoxDecoration(
                                  color: ConstantColors.black.withOpacity(0.5),
                                  borderRadius: const BorderRadius.vertical(
                                    bottom: Radius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  'Turban',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Trending in community',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 20,
                      color: ConstantColors.black,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200, // Fixed height for carousel
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: ConstantColors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.1), // Light shadow color
                            spreadRadius: 1,
                            blurRadius: 6,
                            offset:
                                const Offset(0, 3), // Slight downward shadow
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Stack(
                          children: [
                            Image.network(
                              'https://i.pinimg.com/736x/9d/dd/7b/9ddd7b7309c724aeaa1650a8f5f66924.jpg',
                              fit: BoxFit.cover,
                              width: 200, // Match parent width
                              height: double.infinity, // Fit available height
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                  color: ConstantColors.black.withOpacity(
                                      0.5), // Semi-transparent background
                                  borderRadius: const BorderRadius.vertical(
                                    bottom: Radius.circular(15),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 18,
                                      backgroundImage: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj-hFyNL15DGMb4-q_DywUm12lJRcH5bg3mg&s',
                                      ),
                                      backgroundColor: Colors
                                          .transparent, // Optional for no background color
                                    ),
                                    const SizedBox(width: 5),
                                    Expanded(
                                      child: Text(
                                        'User',
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                                fontSize: 16,
                                                color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Trending in community',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 20,
                      color: ConstantColors.black,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            SizedBox(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      print('Tapped on item $index');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 10.0),
                      child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                          color: ConstantColors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withOpacity(0.3), // Light shadow color
                              spreadRadius: 1,
                              blurRadius: 6,
                              offset:
                                  const Offset(0, 3), // Slight downward shadow
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.network(
                            'https://i.ytimg.com/vi/zQFXSi2DqKQ/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLD74gj_-9r6yt5iLVbq-T1uwsBl_w',
                            fit: BoxFit.cover, // Ensures image fits properly
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
