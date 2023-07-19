import 'package:flutter/material.dart';
import 'package:tharwatflutter/Features/home/data/models/book_model/book_model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../core/function/launch_url.dart';
import '../../../../../../core/widgets/progress_loading.dart';
import '../../../../../../core/widgets/custom_bottom.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomBottom(
              onPressed: () async {
                launchCustomUrl(context, bookModel.accessInfo!.webReaderLink!,
                    LaunchMode.platformDefault);
              },
              text: 'free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomBottom(
              onPressed: () async {
                launchCustomUrl(context, bookModel.volumeInfo!.previewLink!,
                    LaunchMode.externalApplication );
              },
              text: getText(bookModel),
              backgroundColor: const Color(0xffEf8262),
              textColor: Colors.white,
              fontSize: 16,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return 'not Available';
    } else {
      return 'preview';
    }
  }
}
