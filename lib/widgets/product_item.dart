

import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';
class  ProductItem extends StatelessWidget {
  
  final String id;
  final String title;
  final String imageURL;

  ProductItem(this.id, this.title, this.imageURL);


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx)=>ProductDetailScreen(title),
                  ),
                  );
            },
            child: GridTile(
        child: Image.network(
            imageURL, 
            fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black87,
              leading: IconButton(
                icon: Icon(Icons.favorite),
                color: Theme.of(context).accentColor,
                onPressed: (){},
                ),
              title: Text(
                title, 
                textAlign: TextAlign.center,
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.shopping_cart),
                    color: Theme.of(context).accentColor,
                  onPressed: (){},
                  ),
            ),
        
      ),
          ),
    );
  }
}