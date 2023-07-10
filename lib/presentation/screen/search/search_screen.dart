import 'package:flutter/material.dart';
import 'package:quick_grocery/presentation/screen/search/widget/product_result_item.dart';
import 'package:quick_grocery/presentation/shared/app_app_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.addListener(searchListener);
  }

  @override
  void dispose() {
    controller.removeListener(searchListener);
    controller.dispose();
    super.dispose();
  }

  void searchListener() {
    search(controller.text);
  }

  void search(String query) {
    if (query.isEmpty) {
      setState(() {
        // selectedBirds = allBirds;
      });
    } else {
      setState(() {});
    }
  }

  final ProductMock productMock = getProductMock();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppAppBar(
      //   title: 'Search',
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SearchBar(
              hintText: "Search",
              controller: controller,
              padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(horizontal: 15)),
              leading: const Icon(Icons.search),
              trailing: const [Icon(Icons.mic)],
            ),
            // SearchBarDemo(),
            ProductResultItem(
              offerPrice: 10.0,
              originalPrice: 20.0,
              productPhoto: productMock.productPhoto,
              productText: productMock.productText,
              onAddToCart: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBarDemo extends StatelessWidget {
  SearchBarDemo({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SearchBar(
                hintText: "Search",
                controller: controller,
                surfaceTintColor:
                    const MaterialStatePropertyAll<Color>(Color(0xff0000d4)),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(horizontal: 15)),
                leading: const Icon(Icons.menu),
                trailing: const [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar3.jpg"),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SearchBar(
                hintText: "Search",
                controller: controller,
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.only(left: 15)),
                leading: const Icon(Icons.search),
                trailing: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SearchBar(
                hintText: "Search",
                controller: controller,
                surfaceTintColor:
                    const MaterialStatePropertyAll<Color>(Color(0xff2b3fc9)),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.only(left: 15)),
                leading: const Icon(Icons.menu),
                trailing: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SearchBar(
                hintText: "Search",
                controller: controller,
                surfaceTintColor:
                    const MaterialStatePropertyAll<Color>(Color(0xffe94824)),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(horizontal: 15)),
                leading: const Icon(Icons.search),
                trailing: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar3.jpg"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductMock {
  final String productPhoto;
  final String productText;
  final double originalPrice;
  final double offerPrice;

  ProductMock({
    required this.productPhoto,
    required this.productText,
    required this.originalPrice,
    required this.offerPrice,
  });
}

ProductMock getProductMock() {
  return ProductMock(
    productPhoto:
        'https://play-lh.googleusercontent.com/ePO8kmDI3mHQbCcMeSZyhQcXzononmORfsgdVxX-LeQ0GitA2Fa4Xuq-YXxoe029TSU', // Replace with actual photo URL
    productText: 'Example Product',
    originalPrice: 29.99,
    offerPrice: 19.99,
  );
}
