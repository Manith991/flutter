import 'package:flutter/material.dart';
import 'package:my_flutter_codes/01_first_flutter/15_shop_detail.dart';

class ShopLayout extends StatefulWidget {
  const ShopLayout({super.key});

  @override
  State<ShopLayout> createState() => _ShopLayoutState();
}

class _ShopLayoutState extends State<ShopLayout> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          flexibleSpace: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://www.nicepng.com/png/full/66-667912_carrots-png-leave-drawing-image-transparent-library-carrot.png",
                  width: 50,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.location_on),
                    SizedBox(width: 4),
                    Text(
                      "Dhaka, Banassre",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFf7f7f7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.00,),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2
                    ),
                  ),
                  prefixIcon: Icon(Icons.search,color: Colors.grey,),
                  hintText: "Search Store",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: SizedBox(child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.network("https://blog.bigbasket.com/wp-content/uploads/2022/09/vegetables.jpeg",width: double.infinity,height: 100,fit: BoxFit.cover,))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exclusive Offer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text("See all",style: TextStyle(color: Colors.green),)
                ],
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // for(int i=0;i<5;i++)
                      _cardBoxReusable(title: "Organic Bananas", subTitle: "7pcs, Priceg", urlImage: "https://www.organichaive.com.ng/wp-content/uploads/2017/01/banana-350x350.png",price: 4.99, context: context),
                      _cardBoxReusable(title: "Red Apple", subTitle: "1kg, Priceg", urlImage: "https://image.similarpng.com/file/similarpng/original-picture/2020/07/Red-Apple-vector-PNG.png",price: 7.99, context: context),
                      _cardBoxReusable(title: "Green Grape", subTitle: "1kg, Priceg", urlImage: "https://static.vecteezy.com/system/resources/previews/054/799/067/non_2x/fresh-green-grapes-with-leaves-isolated-on-a-transparent-background-showcasing-their-natural-shine-and-texture-green-grape-isolated-on-transparent-background-free-png.png",price: 6.29, context: context),
                      _cardBoxReusable(title: "Watermelon", subTitle: "1pc, Priceg", urlImage: "https://www.pngall.com/wp-content/uploads/2016/04/Watermelon-Free-Download-PNG.png",price: 9.59, context: context),
                      _cardBoxReusable(title: "Avocado", subTitle: "1kg, Priceg", urlImage: "https://static.vecteezy.com/system/resources/previews/012/629/188/non_2x/avocado-fruit-healthy-food-free-png.png",price: 11.29, context: context),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Best Selling",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text("See all",style: TextStyle(color: Colors.green),)
                ],
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i=0;i<5;i++)
                      _cardBoxReusable(title: "Organic Bananas", subTitle: "7pcs, Priceg", urlImage: "https://www.organichaive.com.ng/wp-content/uploads/2017/01/banana-350x350.png",price: 4.99, context: context),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Best Selling",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text("See all",style: TextStyle(color: Colors.green),)
                ],
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i=0;i<5;i++)
                    //   _cardBoxReusable(),
                    _cardBoxReusable(title: "Organic Bananas", subTitle: "7pcs, Priceg", urlImage: "https://www.organichaive.com.ng/wp-content/uploads/2017/01/banana-350x350.png",price: 4.99, context: context),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index){
          setState((){
            _currentIndex = index;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }

  Column _cardBoxReusable({
    required String title,
    required String subTitle,
    required String urlImage,
    required double price,
    required BuildContext context}) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ShopDetail(title:title,subTitle:subTitle,price:price,urlImage:urlImage)));
          },
          child: Card(
            margin: EdgeInsets.only(right: 20),
            child: Container(
              color: Color(0xFFf7f7f7),
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                      child: Container(color: Colors.white,
                          child: Image.network(urlImage,
                            width: 160,height: 100,
                            fit: BoxFit.contain,
                          )
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SizedBox(
                      width: 140,
                      child: Column
                      (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(subTitle,style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 140,
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$$price",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  side: BorderSide(color: Colors.white,width: 2),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                padding: EdgeInsets.zero,
                              ), child: Icon(Icons.add,color: Colors.white,size: 30,),),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
