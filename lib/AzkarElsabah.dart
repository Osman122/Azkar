import"package:flutter/material.dart";

import 'package:flutter/widgets.dart';

import 'Zekr_Content.dart';

    class AzkarElsabah extends StatefulWidget {

@override
_AzkarState createState() => _AzkarState();
}

class _AzkarState extends State<AzkarElsabah> {

  List<int>end=   [1,3,3,3,1,1,3,4,1,7,3,1,1,1,1,1,1,3,1,3,10,3,3,3,3,3];
  List start= [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
String t ="تمت";

      void ColorChange(int end , int start ){

        setState(() {

        start++;

          if(start!=end) {

            start++;


          }
          else if(start==end-1){
            start++;
            print("done");

          }}); }
          Widget build(BuildContext context) {

    return MaterialApp(
        home: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/sabah.jpg"), fit: BoxFit.cover,)),
      child: Scaffold(appBar: AppBar(
          backgroundColor: Color(0xffF17F42),
          centerTitle: true,
      title: Text("أزكار الصباح",style: TextStyle(color: Colors.white,fontSize: 20),)
      
      ,leading: IconButton(icon: Icon(Icons.home),onPressed: (){Navigator.pop(context);},),),
      backgroundColor: Colors.transparent,
        body: ListView(children: <Widget>[
          Zekr_content(Endnum: end[0],Zekr: "اللَّهُ لَا إِلَٰهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ ۚ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ ۚ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ ۗ مَن ذَا الَّذِي يَشْفَعُ عِندَهُ إِلَّا بِإِذْنِهِ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلَّا بِمَا شَاءَ ۚ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ ۖ وَلَا يَئُودُهُ حِفْظُهُمَا ۚ وَهُوَ الْعَلِيُّ الْعَظِيمُ",
            x:() { setState(() {


              if(start[0]!=end[0]) {

                start[0]++;


              }
              else if(start[0]==end[0]-1){
                start[0]++;
                start[0]=t;
                print("done");

              }});},StartNum: start[0],),
          Zekr_content(Endnum: end[1],Zekr: "(قُلْ هُوَ اللَّهُ أَحَدٌ، اللَّهُ الصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ",
            x:() { setState(() {


              if(start[1]!=end[1]) {

                start[1]++;


              }
              else if(start[1]==end[1]-1){
                start[1]++;
                print("done");

              }});},StartNum: start[1],),
          Zekr_content(Endnum: 3,Zekr: "قُلْ أَعُوذُ بِرَبِّ النَّاسِ* مَلِكِ النَّاسِ* إِلَٰهِ النَّاسِ* مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ* الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ* مِنَ الْجِنَةِ وَالنَّاسِ",
            x:() { setState(() {


              if(start[2]!=end[2]) {

                start[2]++;


              }
              else if(start[2]==end[2]-1){
                start[2]++;
                print("done");

              }});},StartNum: start[2],),

          Zekr_content(Endnum: 3,Zekr: "قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَد”.",
            x:() { setState(() {


              if(start[3]!=end[3]) {

                start[3]++;


              }
              else if(start[3]==end[3]-1){
                start[3]++;
                print("done");

              }});},StartNum: start[3],),

          Zekr_content(Endnum: 1,Zekr: "أَمْسَيْـنا وَأَمْسـى المـلكُ لله وَالحَمدُ لله، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذهِ اللَّـيْلَةِ وَخَـيرَ ما بَعْـدَهـا، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذهِ اللَّـيْلةِ وَشَرِّ ما بَعْـدَهـا، رَبِّ أَعـوذُ بِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر.",
            x:() { setState(() {


              if(start[4]!=end[4]) {

                start[4]++;


              }
              else if(start[4]==end[4]-1){
                start[4]++;
                print("done");

              }});},StartNum: start[4],),

          Zekr_content(Endnum: 1,Zekr: "للّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَ أَنا عَبْـدُك ، وَ أَنا عَلـى عَهْـدِكَ وَ وَعْـدِكَ ما اسْتَـطَعْـت، أَعـوذُ بِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَ أَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ",
            x:() { setState(() {


              if(start[5]!=end[5]) {

                start[5]++;


              }
              else if(start[5]==end[5]-1){
                start[5]++;
                print("done");

              }});},StartNum: start[5],),

          Zekr_content(Endnum: 3,Zekr: "رَضيـتُ بِاللهِ رَبَّـاً وَ بِالإسْلامِ ديـناً وَ بِمُحَـمَّدٍ صلّى الله عليه و سلّم نَبِيّـاً ورسولًا",
            x:() { setState(() {


              if(start[6]!=end[6]) {

                start[6]++;


              }
              else if(start[6]==end[6]-1){
                start[6]++;
                print("done");

              }});},StartNum: start[6],),

          Zekr_content(Endnum: 4,Zekr: "اللّهُـمَّ إِنِّـي أَمسيتُ أُشْـهِدُك، وَ أُشْـهِدُ حَمَلَـةَ عَـرْشِـك، وَ مَلَائِكَتَكَ، وَ جَمـيعَ خَلْـقِك، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك، وَأَنَّ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك.",
            x:() { setState(() {


              if(start[7]!=end[7]) {

                start[7]++;


              }
              else if(start[7]==end[7]-1){
                start[7]++;
                print("done");

              }});},StartNum: start[7],),

          Zekr_content(Endnum: 1,Zekr: " اللّهُـمَّ ما  أَمسي بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَك، فَلَكَ الْحَمْـدُ وَلَـكَ الشُّكْـر.",
            x:() { setState(() {


              if(start[8]!=end[8]) {

                start[8]++;


              }
              else if(start[8]==end[8]-1){
                start[8]++;
                print("done");

              }});},StartNum: start[8],),

          Zekr_content(Endnum: 7,Zekr: " حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَ هُوَ رَبُّ العَرْشِ العَظـيم،",
            x:() { setState(() {


              if(start[9]!=end[9]) {

                start[9]++;


              }
              else if(start[9]==end[9]-1){
                start[9]++;
                print("done");

              }});},StartNum: start[9],),

          Zekr_content(Endnum: 3,Zekr: "بسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَ هـوَ السّمـيعُ العَلـيم",
            x:() { setState(() {


              if(start[10]!=end[10]) {

                start[10]++;


              }
              else if(start[10]==end[10]-1){
                start[10]++;
                print("done");

              }});},StartNum: start[10],),

          Zekr_content(Endnum: 1,Zekr: "اللّهُـمَّ بِكَ أَمْسَـينا وَبِكَ أَصْـبَحْنا، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ الْمَصِيرُ.",
            x:() { setState(() {


              if(start[11]!=end[11]) {

                start[11]++;


              }
              else if(start[11]==end[11]-1){
                start[11]++;
                print("done");

              }});},StartNum: start[11],),
          Zekr_content(Endnum: 1,Zekr: "أَمْسَيْنَا عَلَى فِطْرَةِ الإسْلاَمِ ، وَ عَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَ عَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَ مَا كَانَ مِنَ المُشْرِكِينَ",
            x:() { setState(() {


              if(start[12]!=end[12]) {

                start[12]++;


              }
              else if(start[12]==end[12]-1){
                start[12]++;
                print("done");

              }});},StartNum: start[12],),

          Zekr_content(Endnum: 1,Zekr: "سُبْحـانَ اللهِ وَ بِحَمْـدِهِ عَدَدَ خَلْـقِه، وَ رِضـا نَفْسِـه، وَزِنَةَ عَـرْشِه، وَ مِـدادَ كَلِمـاتِه",
            x:() { setState(() {


              if(start[13]!=end[13]) {

                start[13]++;


              }
              else if(start[13]==end[13]-1){
                start[13]++;
                print("done");

              }});},StartNum: start[13],),

          Zekr_content(Endnum: 1,Zekr: "اللّهُـمَّ عافِني في بَدَني، اللّهُـمَّ عافِـني في سَمْـعي، اللّهُـمَّ عافِني في بَصَـر ، لا إلهَ إلاّ أَنْـتَ",
            x:() { setState(() {


              if(start[14]!=end[14]) {

                start[14]++;


              }
              else if(start[14]==end[14]-1){
                start[14]++;
                print("done");

              }});},StartNum: start[14],),

          Zekr_content(Endnum: 1,Zekr: "اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر، وَالفَـقْر، وَ أَعـوذُ بِكَ مِنْ عَذابِ القَـبْر، لا إلهَ إلاّ أَنْـتَ.",
            x:() { setState(() {


              if(start[15]!=end[15]) {

                start[15]++;


              }
              else if(start[15]==end[15]-1){
                start[15]++;
                print("done");

              }});},StartNum: start[15],),
          Zekr_content(Endnum: 1,Zekr: "للّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَ العـافِـيةَ في الدُّنْـيا وَ الآخِـرَة، للّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَ العـافِـيةَ في ديني وَ دُنْـيايَ وَ أهْـلي وَ مالـي، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي، وَمِن فَوْقـي، وَ أَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي.",
            x:() { setState(() {


              if(start[16]!=end[16]) {

                start[16]++;


              }
              else if(start[16]==end[16]-1){
                start[16]++;
                print("done");

              }});},StartNum: start[16],),

          Zekr_content(Endnum: 3,Zekr: " يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ.",
            x:() { setState(() {


              if(start[17]!=end[17]) {

                start[17]++;


              }
              else if(start[17]==end[17]-1){
                start[17]++;
                print("done");

              }});},StartNum: start[17],),

          Zekr_content(Endnum: 1,Zekr: "للّهُـمَّ عالِـمَ الغَـيْبِ وَ الشّـهادَةِ فاطِـرَ السّماواتِ وَ الأرْضِ رَبَّ كـلِّ شَـيءٍ وَ مَليـكَه، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَ مِن شَـرِّ الشَّيْـطانِ وَ شِرْكِهِ، وَ أَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم.",
            x:() { setState(() {


              if(start[18]!=end[18]) {

                start[18]++;


              }
              else if(start[18]==end[18]-1){
                start[18]++;
                print("done");

              }});},StartNum: start[18],),

          Zekr_content(Endnum: 3,Zekr: "أَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق",
            x:() { setState(() {


              if(start[19]!=end[19]) {

                start[19]++;

              }
              else if(start[19]==end[19]-1){
                start[10]++;
                print("done");

              }});},StartNum: start[19],),

          Zekr_content(Endnum: 10,Zekr: "أاللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد",
            x:() { setState(() {


              if(start[20]!=end[20]) {

                start[20]++;


              }
              else if(start[20]==end[20]-1){
                start[20]++;
                print("done");

              }});},StartNum: start[20],),

          Zekr_content(Endnum: 3,Zekr: "أَاللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ",
            x:() { setState(() {


              if(start[21]!=end[21]) {

                start[21]++;


              }
              else if(start[21]==end[21]-1){
                start[21]++;
                print("done");

              }});},StartNum: start[21],),

          Zekr_content(Endnum: 3,Zekr: "أاللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ.",
            x:() { setState(() {


              if(start[22]!=end[22]) {

                start[22]++;


              }
              else if(start[22]==end[22]-1){
                start[22]++;
                print("done");

              }});},StartNum: start[22],),

          Zekr_content(Endnum: 3,Zekr: "أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتُوبُ إلَيهِ",
            x:() { setState(() {


              if(start[23]!=end[23]) {

                start[23]++;


              }
              else if(start[23]==end[23]-1){
                start[23]++;
                print("done");

              }});},StartNum: start[23],),
          Zekr_content(Endnum: 3,Zekr: "يا رب , لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ , وَلِعَظِيمِ سُلْطَانِكَ.",
            x:() { setState(() {


              if(start[24]!=end[24]) {

                start[24]++;


              }
              else if(start[24]==end[24]-1){
                start[24]++;
                print("done");

              }});},StartNum: start[24],),


          Zekr_content(Endnum: 3,Zekr: "اللَّهُمَّ أَنْتَ رَبِّي لا إِلَهَ إِلا أَنْتَ، عَلَيْكَ تَوَكَّلْتُ، وَأَنْتَ رَبُّ الْعَرْشِ الْعَظِيمِ، مَا شَاءَ اللَّهُ كَانَ، وَمَا لَمْ يَشَأْ لَمْ يَكُنْ، وَلا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ، أَعْلَمُ أَنَّ اللَّهَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، وَأَنَّ اللَّهَ قَدْ أَحَاطَ بِكُلِّ شَيْءٍ عِلْمًا، اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي، وَمِنْ شَرِّ كُلِّ دَابَّةٍ أَنْتَ آخِذٌ بِنَاصِيَتِهَا، إِنَّ رَبِّي عَلَى صِرَاطٍ مُسْتَقِيمٍ. مرة واحدة",
            x:() { setState(() {


              if(start[25]!=end[25]) {

                start[25]++;


              }
              else if(start[25]==end[25]-1){
                start[25]++;
                print("done");

              }});},StartNum: start[25],),



          Card(child: Center(child: Text("💗تمت بحمد الله💗",style: TextStyle(fontSize: 30,color: Colors.green),)),)

        ],),)
        )

    );
          }
}



