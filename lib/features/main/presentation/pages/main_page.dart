import 'package:joy_bor/core/constants/exports.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ValueNotifier<int> currentIndex = ValueNotifier(0);

  @override
  void dispose() {
    currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: currentIndex,
        builder: (context, value, child) => IndexedStack(
          index: value,
          children: const [
            HomeScreen(),
            Center(
              child: Icon(
                Icons.map,
                color: Colors.white,
                size: 50,
              ),
            ),
            Center(
              child: Icon(
                Icons.mic,
                color: Colors.white,
                size: 50,
              ),
            ),
            Center(
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 50,
              ),
            ),
            Center(
              child: Icon(
                Icons.settings,
                color: Colors.white,
                size: 50,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MainBottomBar(currentIndex: currentIndex),
    );
  }


}
