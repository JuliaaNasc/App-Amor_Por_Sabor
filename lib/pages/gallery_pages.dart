import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:projeto_social/pages/photos_gallery.dart';

class GalleryPages extends StatelessWidget {
  GalleryPages({
    required this.imagens,
    required this.videos,
    required this.text,
    super.key,
  });

  List<String> imagens;
  List<String> videos;
  String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        centerTitle: true,
        scrolledUnderElevation: 1,
        backgroundColor: Color.fromARGB(255, 36, 7, 1),
        title: Image.asset(
          'assets/logo_empresarial/logo_sem_fundo.png',
          width: 100,
        ),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Color.fromARGB(255, 36, 7, 1),
                    ),
                  ),
                ),
                SizedBox(
                  width: 110,
                  child: Lottie.asset(
                    'assets/gifs/bear.json',
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 3,
              padding: EdgeInsets.all(10),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 1,
              children: imagens.map(
                (imagem) {
                  return GestureDetector(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset(
                          imagem,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (c) {
                            return PhotosGallery(imagem: imagem);
                          },
                        ),
                      );
                    },
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
