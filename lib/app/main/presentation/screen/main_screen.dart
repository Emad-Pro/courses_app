import 'package:courses_app/app/main/presentation/controller/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        final mainCubit = context.read<MainCubit>();
        return Scaffold(
          body: mainCubit.bottomNavigationBarScreens[
              state.currentIndexButtomNavigationBar],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Theme.of(context).colorScheme.primary,
            items: mainCubit.bottomNavigationBar(
              context,
            ),
            currentIndex: state.currentIndexButtomNavigationBar,
            onTap: (index) {
              mainCubit.chacgeCurrentIndex(index);
            },
          ),
        );
      },
    );
  }
}
/**
 * Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Welcome Mark 👋',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Let\'s start learning',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Explore Category',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _CategoryCard(
                  icon: Icons.settings_input_component,
                  title: 'Design',
                  count: 15,
                ),
                _CategoryCard(
                  icon: Icons.business_center,
                  title: 'Business',
                  count: 25,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _CategoryCard(
                  icon: Icons.code,
                  title: 'IT & Tech',
                  count: 40,
                ),
                _CategoryCard(
                  icon: Icons.insights,
                  title: 'Market',
                  count: 10,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Featured Courses',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _CourseCard(
                  image: 'assets/images/course1.jpg',
                  title: 'User Interface Design Essentials',
                  rating: 4.9,
                  reviews: 80,
                  price: 75,
                  category: 'UI/UX Design',
                ),
                _CourseCard(
                  image: 'assets/images/course2.jpg',
                  title: 'Supply Chain Management',
                  rating: 4.5,
                  reviews: 12,
                  price: 0,
                  category: 'Business Management',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 20,
                    ),
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('See All'),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 20,
                    ),
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('See All'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
 */