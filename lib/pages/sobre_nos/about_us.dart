import 'package:flutter/material.dart';
import 'package:projeto_social/pages/place_order.dart';

class AboutUs extends StatelessWidget {
  AboutUs({
    required this.hasAppBar,
    super.key,
  });

  bool hasAppBar;

  @override
  Widget build(BuildContext context) {
    AppBar? appbar = null;
    if (hasAppBar) {
      appbar = AppBar(
        toolbarHeight: 110,
        centerTitle: true,
        scrolledUnderElevation: 1,
        backgroundColor: Color.fromARGB(255, 36, 7, 1),
        title: Image.asset(
          'assets/logo_empresarial/logo_sem_fundo.png',
          width: 100,
        ),
        foregroundColor: Colors.white,
      );
    }
    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Text(
              'Conheça um pouco mais da \nnossa doceria.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(255, 36, 7, 1),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                'Nossa história começou com uma pequena produção caseira e muita vontade de vencer. Com poucos recursos, mas um enorme amor pela confeitaria, iniciamos essa jornada levando doces para amigos, familiares e clientes fiéis. Aos poucos, a qualidade e o sabor conquistaram Fortaleza, transformando um sonho em uma doceria reconhecida e querida. Com receitas que atravessam gerações, nossa doceria surgiu para manter viva a tradição dos doces artesanais em Fortaleza. Inspirados pelos sabores da infância e pelas delícias feitas com ingredientes selecionados, fomos conquistando espaço e o coração dos nossos clientes.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          'assets/modelos/julia_01.png',
                          width: 200,
                        ),
                      ),
                     
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Text(
                      'Nosso propósito é resgatar memórias afetivas por meio do sabor. Cada receita carrega um pouco de história, carinho e tradição, trazendo à tona lembranças especiais e criando novas recordações para nossos clientes.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                'Nossa missão é oferecer doces artesanais que preservam o sabor da tradição, utilizando ingredientes selecionados e técnicas que garantem qualidade e frescor. Queremos que cada cliente sinta o carinho e a dedicação em cada mordida.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Nossa paixão pela confeitaria vai além de simplesmente fazer doces: é uma arte, uma forma de expressão e um jeito de espalhar carinho. Cada bolo, brigadeiro e sobremesa é feito com dedicação, buscando sempre encantar e surpreender.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 1,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/modelos/julia_02.png',
                            width: 200,
                          ),
                        ),
                       
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                'O que nos destaca é a qualidade dos nossos ingredientes e o cuidado artesanal em cada preparo. Cada doce é feito com carinho, trazendo um sabor autêntico e inesquecível que conquista nossos clientes desde a primeira mordida. Mais do que vender doces, oferecemos uma experiência única! Nosso atendimento é acolhedor, e cada detalhe é pensado para que nossos clientes se sintam especiais. Queremos que cada visita seja tão doce quanto nossos produtos!',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          'assets/modelos/julia_03.png',
                          width: 200,
                        ),
                      ),
                      
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      'Nosso diferencial está no amor que colocamos em cada doce. Aqui, cada receita carrega um propósito: tornar os dias mais felizes, celebrar momentos especiais e criar doces que marcam a vida das pessoas.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'Venha se deliciar com nossos doces e sentir o carinho em cada pedaço. Cada receita é feita com amor, dedicação e os melhores ingredientes para proporcionar uma experiência única e inesquecível. Aqui, cada mordida é um convite para celebrar a vida e os momentos especiais. Esperamos por você para tornar seu dia mais doce e repleto de sabor!',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'CEOs da Amor Por Sabor',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(255, 36, 7, 1),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/ceos/foto_perfil_julia.jpg',
                      width: 150,
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      'Olá, eu sou Júlia Nascimento, confeiteira por paixão e criadora das delícias que adoçam tantos momentos especiais. Minha jornada na confeitaria começou com um simples amor pelos doces e cresceu junto com o desejo de transformar sabores em experiências inesquecíveis.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/ceos/foto_perfil_arlysthon.jpeg',
                      width: 150,
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Text(
                      'Olá, eu sou Arlysthon Feitosa, confeiteiro por paixão! \nMinha jornada começou com pequenos testes na cozinha e se tornou um sonho realizado. Hoje, transformo criatividade e amor em doces que encantam e adoçam momentos especiais.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: Text(
                'Deixe-se levar pelo sabor e descubra o prazer de saborear um doce feito com carinho. Venha provar nossas delícias e transformar seu dia em uma experiência ainda mais doce! 😊🍰',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 60),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 36, 7, 1),
                side: const BorderSide(
                  width: 2,
                  color: Color.fromARGB(255, 36, 7, 1),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (c) {
                      return PlaceOrder(
                        hasAppBar: true,
                      );
                    },
                  ),
                );
              },
              child: const Text(
                'Faça o seu Pedido',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
