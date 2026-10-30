import 'package:flutter/material.dart';

void main() {
  runApp(const FitLifeApp());
}

class FitLifeApp extends StatelessWidget {
  const FitLifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitLife',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF7FAFC),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF239B78),
          primary: const Color(0xFF239B78),
        ),
        fontFamily: 'Roboto',
      ),
      home: const SplashScreen(),
    );
  }
}

const Color green = Color(0xFF239B78);
const Color dark = Color(0xFF10233F);
const Color muted = Color(0xFF687891);
const Color paleGreen = Color(0xFFE8F5EF);

// Replace these URLs with local assets if you prefer offline images.
const String splashPhoto =
    'https://images.openai.com/static-rsc-4/v4QKQG_sQ559EFLC5BTeSs9_djYrzQaJsnjk_WQ_arxflW2Jg0x1lIb1bM-E_iVfVYCLE8R2-E5g41-_68fYeJRGObsjYf81djaJMetoUZYdApfCg_NZmHJf6Tq2gLm-IAACdbl1Q7EEeVKyYLkVd1UGniCG_XaQkpCjHLabN0yhW8Oo6N-G6OUSdIwM03vt?purpose=fullsize';
const String workoutPhoto =
    'https://images.unsplash.com/photo-1517836357463-d25dfeac3438?w=1000';
const String cardioPhoto =
    'https://images.unsplash.com/photo-1546483875-ad9014c88eba?w=1000';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const NetworkPhoto(url: splashPhoto),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0x22314F69),
                  Color(0x33101F2A),
                  Color(0xF0001018),
                ],
                stops: [0, 0.48, 1],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(28, 40, 28, 28),
              child: Column(
                children: [
                  const Spacer(flex: 2),
                  const Icon(
                    Icons.spa_rounded,
                    color: Color(0xFF42B78E),
                    size: 66,
                  ),
                  const SizedBox(height: 8),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -1.8,
                      ),
                      children: [
                        TextSpan(
                          text: 'Fit',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: 'Life',
                          style: TextStyle(color: Color(0xFF42B78E)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Better Health  •  Happier You',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  const Spacer(flex: 4),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 29,
                          height: 1.2,
                          fontWeight: FontWeight.w800,
                        ),
                        children: [
                          TextSpan(text: 'Small Steps\nBig '),
                          TextSpan(
                            text: 'Changes',
                            style: TextStyle(color: Color(0xFF72D6B1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Your journey to a healthier\nand stronger you starts here.',
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(height: 34),
                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFF35B88B),
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const HomeScreen()),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 14),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account? ',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const HomeScreen()),
                        ),
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                            color: Color(0xFF55D2A5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning,',
                              style: TextStyle(color: dark, fontSize: 16),
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Pramod 👋',
                              style: TextStyle(
                                color: dark,
                                fontSize: 27,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_none_rounded,
                          color: dark,
                          size: 28,
                        ),
                      ),
                      const CircleAvatar(
                        radius: 22,
                        backgroundColor: Color(0xFFD8E5E8),
                        child: Icon(Icons.person, color: dark),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search workouts, meals, or goals...',
                      hintStyle: const TextStyle(color: muted, fontSize: 13),
                      prefixIcon: const Icon(Icons.search, color: dark),
                      filled: true,
                      fillColor: const Color(0xFFF0F5FA),
                      contentPadding: const EdgeInsets.symmetric(vertical: 17),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => openWorkout(context),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        height: 178,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            const NetworkPhoto(url: workoutPhoto),
                            Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Color(0xD9001720),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 18,
                              bottom: 18,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 13,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: green,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Text(
                                      'Featured',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 9),
                                  const Text(
                                    'Full Body Workout',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  const Text(
                                    '30 min  •  Intermediate',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Positioned(
                              right: 18,
                              bottom: 18,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.arrow_forward, color: green),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Row(
                    children: const [
                      Expanded(
                        child: CategoryItem(
                          icon: Icons.fitness_center,
                          label: 'Workouts',
                          color: Color(0xFFDCF3E9),
                          iconColor: green,
                        ),
                      ),
                      Expanded(
                        child: CategoryItem(
                          icon: Icons.restaurant,
                          label: 'Nutrition',
                          color: Color(0xFFE4EEFF),
                          iconColor: Color(0xFF527BFF),
                        ),
                      ),
                      Expanded(
                        child: CategoryItem(
                          icon: Icons.spa,
                          label: 'Mindfulness',
                          color: Color(0xFFFFE6ED),
                          iconColor: Color(0xFFE75B83),
                        ),
                      ),
                      Expanded(
                        child: CategoryItem(
                          icon: Icons.bar_chart,
                          label: 'Progress',
                          color: Color(0xFFFFF1D9),
                          iconColor: Color(0xFFF1A21A),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 27),
                  const SectionHeading(
                    title: "Today's Focus",
                    action: 'View All',
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: paleGreen,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 27,
                          backgroundColor: Color(0xFFD8EFE3),
                          child: Icon(
                            Icons.track_changes,
                            color: green,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "You're on track!",
                                style: TextStyle(
                                  color: dark,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Complete your workout and\nstay consistent.',
                                style: TextStyle(
                                  color: muted,
                                  fontSize: 12,
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.chevron_right, color: dark),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  const SectionHeading(
                    title: 'Recommended Workouts',
                    action: 'See All',
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: WorkoutCard(
                          image: cardioPhoto,
                          title: 'HIIT Cardio',
                          duration: '20 min',
                          level: 'Beginner',
                          calories: '220 kcal',
                          onTap: () => openWorkout(context),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: WorkoutCard(
                          image: workoutPhoto,
                          title: 'Morning Yoga',
                          duration: '15 min',
                          level: 'All Levels',
                          calories: '180 kcal',
                          onTap: () => openWorkout(context),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedTab,
        onDestinationSelected: (index) {
          setState(() => selectedTab = index);
          if (index == 1) openWorkout(context);
        },
        backgroundColor: Colors.white,
        indicatorColor: paleGreen,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.fitness_center),
            label: 'Workouts',
          ),
          NavigationDestination(
            icon: Icon(Icons.restaurant),
            label: 'Nutrition',
          ),
          NavigationDestination(icon: Icon(Icons.bar_chart), label: 'Progress'),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

void openWorkout(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => const WorkoutDetailsScreen()),
  );
}

class WorkoutDetailsScreen extends StatelessWidget {
  const WorkoutDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 270,
            pinned: true,
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.all(7),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back, color: dark),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(7),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border, color: dark),
                  ),
                ),
              ),
            ],
            flexibleSpace: const FlexibleSpaceBar(
              background: NetworkPhoto(url: cardioPhoto),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              transform: Matrix4.translationValues(0, -18, 0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              padding: const EdgeInsets.fromLTRB(22, 22, 22, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'HIIT Cardio',
                    style: TextStyle(
                      color: dark,
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 13),
                  const Row(
                    children: [
                      MetaItem(
                        icon: Icons.local_fire_department,
                        text: '220 kcal',
                        color: Color(0xFFFF6B35),
                      ),
                      MetaItem(icon: Icons.access_time, text: '20 min'),
                      MetaItem(icon: Icons.bar_chart, text: 'Beginner'),
                    ],
                  ),
                  const SizedBox(height: 28),
                  const Text(
                    'Overview',
                    style: TextStyle(
                      color: dark,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'A high-intensity interval training (HIIT) workout designed to boost your metabolism, improve endurance, and burn calories. No equipment needed. Just your body and determination!',
                    style: TextStyle(color: muted, height: 1.55, fontSize: 14),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Exercises',
                        style: TextStyle(
                          color: dark,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See All',
                          style: TextStyle(
                            color: green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const ExerciseRow(
                    number: '1',
                    title: 'Jumping Jacks',
                    duration: '1 min',
                    icon: Icons.accessibility_new,
                  ),
                  const ExerciseRow(
                    number: '2',
                    title: 'High Knees',
                    duration: '1 min',
                    icon: Icons.directions_run,
                  ),
                  const ExerciseRow(
                    number: '3',
                    title: 'Mountain Climbers',
                    duration: '1 min',
                    icon: Icons.fitness_center,
                  ),
                  const ExerciseRow(
                    number: '4',
                    title: 'Burpees',
                    duration: '1 min',
                    icon: Icons.sports_gymnastics,
                  ),
                  const SizedBox(height: 14),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: paleGreen,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFD8EFE3),
                          child: Icon(Icons.fitness_center, color: green),
                        ),
                        SizedBox(width: 13),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'What You Need',
                                style: TextStyle(
                                  color: dark,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Just your body. No equipment required!',
                                style: TextStyle(color: muted, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: FilledButton.icon(
                      onPressed: () => ScaffoldMessenger.of(context)
                          .showSnackBar(
                            const SnackBar(
                              content: Text('Workout started! (Frontend demo)'),
                            ),
                          ),
                      style: FilledButton.styleFrom(
                        backgroundColor: green,
                        foregroundColor: Colors.white,
                      ),
                      icon: const Icon(Icons.play_arrow),
                      label: const Text(
                        'Start Workout',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NetworkPhoto extends StatelessWidget {
  final String url;
  const NetworkPhoto({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      errorBuilder: (_, __, ___) => Container(
        color: const Color(0xFFDCE9E7),
        child: const Center(
          child: Icon(Icons.image_outlined, color: green, size: 48),
        ),
      ),
      loadingBuilder: (context, child, progress) {
        if (progress == null) return child;
        return Container(
          color: const Color(0xFFEAF1F3),
          child: const Center(child: CircularProgressIndicator(color: green)),
        );
      },
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final Color iconColor;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 58,
          height: 58,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(19),
          ),
          child: Icon(icon, color: iconColor, size: 29),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: dark,
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class SectionHeading extends StatelessWidget {
  final String title;
  final String action;
  const SectionHeading({super.key, required this.title, required this.action});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: dark,
            fontSize: 17,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          action,
          style: const TextStyle(
            color: green,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class WorkoutCard extends StatelessWidget {
  final String image;
  final String title;
  final String duration;
  final String level;
  final String calories;
  final VoidCallback onTap;

  const WorkoutCard({
    super.key,
    required this.image,
    required this.title,
    required this.duration,
    required this.level,
    required this.calories,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(17),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0D10233F),
              blurRadius: 12,
              offset: Offset(0, 4),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              child: NetworkPhoto(url: image),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: dark,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$duration  •  $level',
                    style: const TextStyle(color: muted, fontSize: 10),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.local_fire_department,
                        color: Color(0xFFFF7043),
                        size: 16,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        calories,
                        style: const TextStyle(color: muted, fontSize: 11),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MetaItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const MetaItem({
    super.key,
    required this.icon,
    required this.text,
    this.color = muted,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Icon(icon, color: color, size: 19),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              text,
              style: const TextStyle(color: muted, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

class ExerciseRow extends StatelessWidget {
  final String number;
  final String title;
  final String duration;
  final IconData icon;

  const ExerciseRow({
    super.key,
    required this.number,
    required this.title,
    required this.duration,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: const Color(0xFFD5F4D0),
            child: Text(
              number,
              style: const TextStyle(
                color: dark,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 66,
            height: 54,
            decoration: BoxDecoration(
              color: const Color(0xFFE8EEF0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: green, size: 29),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: dark,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  duration,
                  style: const TextStyle(color: muted, fontSize: 11),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: muted),
        ],
      ),
    );
  }
}
