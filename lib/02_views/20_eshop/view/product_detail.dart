import 'package:flutter/material.dart';
import 'package:my_flutter_codes/02_views/20_eshop/view/cart_view.dart';
import 'package:my_flutter_codes/02_views/constant_root.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(color: Colors.grey, height: size.height * 0.55,width: double.infinity,child: Image.network("https://pngimg.com/d/xbox_PNG101375.png",fit: BoxFit.fill,),),
              Positioned(
                bottom: 0,
                child: Container(
                  height: size.height * 0.5,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: k20FillColor),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Xbox Series X",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                "% On Sale",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.black.withValues(alpha: 0.15),
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0,
                                  vertical: 8,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star, color: Colors.orange),
                                    SizedBox(width: 5),
                                    Text(
                                      "4.8",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.black.withValues(alpha: 0.15),
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0,
                                  vertical: 8,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.thumb_up, color: k20ActiveColor),
                                    SizedBox(width: 5),
                                    Text(
                                      "94%",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "117 reviews",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "he Microsoft Xbox Series X gaming console is capable of impressing with minimal boot times and mesmerizing visual effects when playing games at up to 120 frames per second",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: k20ActiveColor,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: k20ActiveColor,
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8.0,
                                ),
                                child: Text(
                                  "1 TB",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8.0,
                                ),
                                child: Text(
                                  "512 GB",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8.0,
                                ),
                                child: Text(
                                  "256 GB",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(thickness: 2, color: k20FillColor),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "\$650.00",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "\$570.00",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_)=> CartView())),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: k20ActiveColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40.0,
                                  vertical: 20,
                                ),
                                child: Text(
                                  "Add to Cart",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: k20FillColor, width: 2),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back_ios_new_outlined),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                right: 20,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: k20FillColor, width: 2),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.favorite, color: Colors.red),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: k20FillColor, width: 2),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.file_upload_outlined),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:my_flutter_codes/02_views/20_eshop/views/cart_view.dart';
// import 'package:my_flutter_codes/02_views/constant_root.dart';
//
// class ProductDetail extends StatefulWidget {
//   const ProductDetail({super.key});
//
//   @override
//   State<ProductDetail> createState() => _ProductDetailState();
// }
//
// class _ProductDetailState extends State<ProductDetail> {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: SizedBox(
//           height: size.height,
//           child: Stack(
//             children: [
//               // Background image
//               Container(
//                 color: Colors.grey,
//                 height: size.height * 0.55,
//                 width: double.infinity,
//                 child: Image.network(
//                   "https://pngimg.com/d/xbox_PNG101375.png",
//                   fit: BoxFit.fill,
//                 ),
//               ),
//
//               // Top buttons
//               Positioned(
//                 top: 50,
//                 left: 20,
//                 right: 20,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     _circleButton(Icons.arrow_back_ios_new_outlined,
//                         onTap: () => Navigator.pop(context)),
//                     Row(children: [
//                       _circleButton(Icons.favorite, color: Colors.red),
//                       const SizedBox(width: 10),
//                       _circleButton(Icons.file_upload_outlined),
//                     ]),
//                   ],
//                 ),
//               ),
//
//               // Bottom sheet
//               Positioned(
//                 bottom: 0,
//                 child: Container(
//                   height: size.height * 0.5,
//                   width: size.width,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(width: 2, color: k20FillColor),
//                     borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(18),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         // Title + sale badge
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Text("Xbox Series X",
//                                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//                             _badge("% On Sale", Colors.red),
//                           ],
//                         ),
//
//                         // Rating row
//                         Row(children: [
//                           _statChip(Icons.star, Colors.orange, "4.8"),
//                           const SizedBox(width: 8),
//                           _statChip(Icons.thumb_up, k20ActiveColor, "94%"),
//                           const SizedBox(width: 8),
//                           const Text("117 reviews",
//                               style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
//                         ]),
//
//                         // Description
//                         const Text(
//                           "The Microsoft Xbox Series X gaming console is capable of impressing "
//                               "with minimal boot times and mesmerizing visual effects when playing "
//                               "games at up to 120 frames per second",
//                         ),
//
//                         // Storage options
//                         Row(children: [
//                           _storageChip("1 TB", selected: true),
//                           const SizedBox(width: 10),
//                           _storageChip("512 GB"),
//                           const SizedBox(width: 10),
//                           _storageChip("256 GB"),
//                         ]),
//
//                         const Divider(thickness: 2, color: k20FillColor),
//
//                         // Price + Add to Cart
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text("\$650.00",
//                                     style: TextStyle(
//                                         color: Colors.grey,
//                                         fontSize: 18,
//                                         decoration: TextDecoration.lineThrough,
//                                         decorationColor: Colors.grey)),
//                                 Text("\$570.00",
//                                     style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
//                               ],
//                             ),
//                             ElevatedButton(
//                               onPressed: () => Navigator.push(context,
//                                   MaterialPageRoute(builder: (_) => CartView())),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: k20ActiveColor,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(18)),
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 40, vertical: 20),
//                               ),
//                               child: const Text("Add to Cart",
//                                   style: TextStyle(color: Colors.white, fontSize: 20)),
//                             ),
//                           ],
//                         ),
//
//                         const SizedBox(height: 5),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _circleButton(IconData icon, {Color? color, VoidCallback? onTap}) => GestureDetector(
//     onTap: onTap,
//     child: Container(
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         border: Border.all(color: k20FillColor, width: 2),
//       ),
//       child: CircleAvatar(
//         backgroundColor: Colors.white,
//         child: Icon(icon, color: color),
//       ),
//     ),
//   );
//
//   Widget _badge(String label, Color color) => ElevatedButton(
//     onPressed: () {},
//     style: ElevatedButton.styleFrom(
//       backgroundColor: color,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//     ),
//     child: Text(label, style: const TextStyle(color: Colors.white)),
//   );
//
//   Widget _statChip(IconData icon, Color color, String value) => Container(
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(20),
//       border: Border.all(color: Colors.black.withValues(alpha: 0.15), width: 2),
//     ),
//     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//     child: Row(children: [
//       Icon(icon, color: color),
//       const SizedBox(width: 5),
//       Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//     ]),
//   );
//
//   Widget _storageChip(String label, {bool selected = false}) => Container(
//     decoration: BoxDecoration(
//       color: selected ? k20ActiveColor : null,
//       borderRadius: BorderRadius.circular(12),
//       border: Border.all(color: selected ? k20ActiveColor : Colors.black, width: 2),
//     ),
//     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//     child: Text(
//       label,
//       style: TextStyle(
//         color: selected ? Colors.white : null,
//         fontSize: 16,
//         fontWeight: FontWeight.w500,
//       ),
//     ),
//   );
// }
