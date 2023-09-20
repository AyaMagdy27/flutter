import 'package:flutter/material.dart';

class Mymodel extends StatefulWidget {
  const Mymodel({super.key});

  @override
  State<Mymodel> createState() => _MymodelState();
}

class _MymodelState extends State<Mymodel> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "",
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),
            ),
          ),
          elevation: 10,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          actions: [
            // navigator to shopping cart
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
              icon: const Icon(Icons.shopping_cart),
              tooltip: "shopping cart",
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_rounded),
              tooltip: "favorites",
            ),
          ],
        ),
        body: Container(
          //Background Photo
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background-3338.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.all(16.0),
                  childAspectRatio: 8.0 / 9.0,
                  children: mybody(context) // Replace
              ),
            ],
          ),
        ),
      ),
    );
  }
}



List<Card> mybody(BuildContext context) {
  List<Product> products = ProductsRepository.loadProducts(Category.all);

  if (products.isEmpty) {
    return const <Card>[];
  }

  final ThemeData theme = Theme.of(context);
  final NumberFormat formatter = NumberFormat.simpleCurrency(
      locale: Localizations.localeOf(context).toString());

  return products.map((product) {
    return Card(
      clipBehavior: Clip.antiAlias,
      // TODO: Adjust card heights (103)
      child: Column(
        // TODO: Center items on the card (103)
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 18 / 11,
            child: Image.asset(
              product.assetName,
              package: product.assetPackage,
              fit: BoxFit.fitWidth,
              // TODO: Adjust the box size (102)
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                // TODO: Align labels to the bottom and center (103)
                crossAxisAlignment: CrossAxisAlignment.start,
                // TODO: Change innermost Column (103)
                children: <Widget>[
                  // TODO: Handle overflowing labels (103)
                  Text(
                    product.name,
                    style: theme.textTheme.titleLarge,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    formatter.format(product.price),
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }).toList();
}
