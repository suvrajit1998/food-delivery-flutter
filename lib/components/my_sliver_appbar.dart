import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/cart_page.dart';

class MySliverAppBar extends StatefulWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  State<MySliverAppBar> createState() => _MySliverAppBarState();
}

class _MySliverAppBarState extends State<MySliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ));
          },
          icon: const Icon(Icons.shopping_cart),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Center(child: Text('Sunset Diner')),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: widget.child,
        ),
        title: widget.title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
