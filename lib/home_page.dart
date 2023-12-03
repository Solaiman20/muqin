import 'package:flutter/material.dart';
import 'package:muqin/pdf_viewr.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      children: [
        Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                "assets/Background.png",
                fit: BoxFit.cover,
              ),
            ),
            Align(
              child: Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image(
                  image: AssetImage("assets/AhmedShawqi.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    ":عن الكتاب",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Text(
                  "عن الكتاب:«مجنون ليلى» هو قيس بن الملوح، من بطون هوازن، وأحد كبار الشعراء الذين عاشوا في القرن الأول الهجري إبان الحكم الأموي، ويعد قيس من المتيَّمين الذين سالت ألسنتهم بالشعر قولًا في الحب والغزل، وسمي بمجنون ليلى لهيامه بها وعشقه لها، ذلك العشق الذي فاق كل الحدود، حتى أصبح مثالًا للعاشقين، ورغم هذا الحب، فقد رفض أهل ليلى أن يزوجوها له، فهام على وجهه ينشد الشعر ويتنقل بين البلاد، حتى مات كمدًا، فأي أُنْس له في الحياة وقد استوحشت، وأي طمأنينة له في نفسه وقد صارت قلقه، وأي حب ينشده في الدنيا بعد حب ليلى! وقد تناولَت هذه المسرحية الشعرية لأمير الشعراء أحمد شوقي، تلك المأساة الدرامية تناولًا متميزًا ورائعًا.",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).textTheme.bodyMedium!.color),
                  textDirection: TextDirection.rtl,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => const PDFViewer()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context)
                                .buttonTheme
                                .colorScheme!
                                .primary,
                            elevation: 10),
                        child: Text(
                          "اقرأ الكتاب كاملا",
                          style: TextStyle(
                              color: Theme.of(context)
                                  .buttonTheme
                                  .colorScheme!
                                  .inversePrimary),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => const PDFViewer()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context)
                                .buttonTheme
                                .colorScheme!
                                .primary,
                            elevation: 10),
                        child: Text(
                          "اقرأ ملخص الكتاب",
                          style: TextStyle(
                              color: Theme.of(context)
                                  .buttonTheme
                                  .colorScheme!
                                  .inversePrimary),
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => const PDFViewer()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context)
                                .buttonTheme
                                .colorScheme!
                                .primary,
                            elevation: 10),
                        icon: const Icon(Icons.audiotrack)),
                  ],
                ),
              ]),
        ),
      ],
    ));
  }
}
