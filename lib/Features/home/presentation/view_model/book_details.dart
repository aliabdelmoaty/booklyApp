import 'package:flutter/material.dart';
import 'package:tharwatflutter/Features/home/presentation/view_model/widgets/book_details/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BookDetailsViewBody(),
      ),
    );
    
  }
}
