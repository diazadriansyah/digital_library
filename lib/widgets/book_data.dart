import 'package:flutter/material.dart';

class NavigationItem {

  IconData iconData;

  NavigationItem(this.iconData);

}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    NavigationItem(Icons.home),
    NavigationItem(Icons.book),
    NavigationItem(Icons.local_library),
    NavigationItem(Icons.person),
  ];
}

class Book {

  String title;
  String description;
  Author author;
  String score;
  String image;

  Book(this.title, this.description, this.author, this.score, this.image);

}

List<Book> getBookList(){
  return <Book>[
    Book(
      "Aplikasi Pertama Dengan Flutter",
      "Buku panduan untuk memulai membuat aplikasi pertama dengan flutter, terdapat sebuah code dan sebuah petunjuk beserta penjelasannya",
      Author(
        "Diaz Adriansyah",
        90,

      ),
      "5.00",
      "assets/images/book/programming/Programming Membuat Aplikasi Pertama Dengan Flutter.png",
    ),
    Book(
      "Center of Gravity",
      "Buku panduan tentang langkah awal membuat aplikasi internet working kit (iot) center of gravity",
      Author(
        "Diaz Adriansyah",
        123,
      ),
      "5.00",
      "assets/images/book/programming/Programming Center of Gravity.png",
    ),
    Book(
      "Shared Preferences",
      "Buku penjelasan dan langkah langkah membuat package flutter shared preference",
      Author(
        "Diaz Adriansyah",
        99,
      ),
      "5.00",
      "assets/images/book/programming/Programming Pengenalan Package Shared Preference.png",
    ),
    Book(
      "Client Server Protokol",
      "Buku penjelasan tentang client server dan protokol",
      Author(
        "Diaz Adriansyah",
        134,
      ),
      "5.00",
      "assets/images/book/programming/Programming Client Server Dan Protokol.png",
    ),
    Book(
      "Internet Of Things",
      "Buku penjelasan tentang apa itu internet of things ?, bagaimana cara kerjanya ?, dan bagaimana membuatnya?",
      Author(
        "Diaz Adriansyah",
        87,
      ),
      "5.00",
      "assets/images/book/programming/Programming Internet of Things.png",
    ),
    Book(
      "Perang Dunia 1",
      "Perang Dunia I (WW1) adalah kontes gladiator terbesar sepanjang sejarah umat manusia yang melibatkan para hegemon Eropa serta koloninya. Vladimir Lenin, sang tokoh komunis Rusia yang dijuluki ‘virus’ oleh para hegemon Eropa menyebut perang ini sebagai ”perangnya bangsawan”, bukan ”perang rakyat”. Pemikirannya yang dilandasi sikap anti kaum ningrat dan prorakyat ini nantinya melahirkan gagasan berdirinya negara komunis di Rusia setelah berhasil menumbangkan dinasti penguasa Kekaisaran Rusia, Dinasti Romanov, melalui serangkaian revolusi: Revolusi Februari dan Revolusi Oktober 1917.",
      Author(
        "Alfi Arifian",
        108,
      ),
      "4.10",
      "assets/images/book/history/History 1.jpg",
    ),
    Book(
      "Perang Dunia 2",
      "Selama Perang Dunia (PD) II, hasil penghancuran besar-besaran ini telah mengubah banyak wilayah Eropa menjadi lengang dan sunyi. Kota-kota hancur lebur atau menjadi santapan badai api. Wilayah pinggiran kota hangus dan menghitam. Jalan-jalan penuh lobang dampak dari ledakan. Rel-rel tidak berfungsi lagi. Jembatan-jembatan hancur atau putus. Pelabuhan-pelabuhan penuh dengan kapal-kapal yang tenggelam dan miring. Semua kerusakan yang teramat sangat itu adalah bukti dari dahsyatnya kekuatan yang meletus di Eropa.",
      Author(
        "Ari Subiakto",
        77,
      ),
      "4.14",
      "assets/images/book/history/History 2.jpg",
    ),
    Book(
      "Sejarah Indonesia Kemerdekaan",
      "Nasionalisme erat kaitannya dengan sejauh mana seseorang memahami sejarah bangsanya sendiri. Pembelajaran yang dilakukan di perguruan tinggi maupun di sekolah tidaklah cukup untuk membahas tuntas perjalanan panjang sejarah bangsa. Oleh sebab itu, perlu banyak referensi yang mengantarkan kita untuk melihat Indonesia masa silam.",
      Author(
        "Dr. Arman,M.PD",
        112,
      ),
      "2.14",
      "assets/images/book/history/History 4.jpg",
    ),
    Book(
      "Perang Bubat",
      "Perang Bubat adalah perang yang terjadi pada masa pemerintahan raja Majapahit, Hayam Wuruk dengan Mahapatih Gajah Mada yang saat itu sedang melaksanakan Sumpah Palapa. Persitiwa ini melibatkan Mahapatih Gajah Mada dengan Prabu Maharaja Linggabuana dari Kerajaan Sunda di Pesanggrahan Bubat pada tahun 1357 M.",
      Author(
        "Sri Wintala Ahmad",
        65,
      ),
      "3.14",
      "assets/images/book/history/History 5.png",
    ),
    Book(
      "Perjuangan Kemerdekaan",
      "Perjuangan bangsa Indonesia dimasa kemerdekaan",
      Author(
        "Koesmi Hartiyah",
        75,
      ),
      "5.00",
      "assets/images/book/history/History 3.jpg",
    ),
    Book(
      "Ensiklopedia Sains",
      "Ensiklopedia mengenai sains",
      Author(
        "Gramedia",
        70,
      ),
      "4.19",
      "assets/images/book/science/Sains 1.jpg",
    ),
    Book(
      "Sains Dalam Al-Quran",
      "Membahas mengenai sains dalam Al-Quran",
      Author(
        "Dr. Nadiah Thayyarah",
        70,
      ),
      "4.20",
      "assets/images/book/science/Sains 2.jpg",
    ),
    Book(
      "Sainspirasi",
      "Buku tentang inspirasi kehidupan berdasarkan fenomena sains",
      Author(
        "Doni Swardama",
        70,
      ),
      "4.14",
      "assets/images/book/science/Sains 3.jpg",
    ),
    Book(
      "Mengenal Sains",
      "Buku mengenai pembahasan tentang apa yang disebut Sains",
      Author(
        "Susan V.Bosak",
        70,
      ),
      "4.23",
      "assets/images/book/science/Sains 4.jpg",
    ),
    Book(
      "Sains Tradisional",
      "Pembahasan mengenai sains tradisional dan modern",
      Author(
        "Pengetahuan Dasar Comic",
        70,
      ),
      "2.14",
      "assets/images/book/science/Sains 5.jpg",
    ),
    Book(
      "Kepelatihan Sepak Bola",
      "Panduan berlatih sepak bola dasar",
      Author(
        "Ketut Chandra Adinata",
        70,
      ),
      "3.14",
      "assets/images/book/olahraga/Olah Raga 1.jpg",
    ),
    Book(
      "Berenang Gaya Dada",
      "Panduan berenang gaya dada",
      Author(
        "Drs. Pitwanto",
        70,
      ),
      "4.16",
      "assets/images/book/olahraga/Olah Raga 2.jpg",
    ),
    Book(
      "Bola Basket",
      "Panduan bola basket dasar",
      Author(
        "Yolis Y.A Djami",
        70,
      ),
      "4.15",
      "assets/images/book/olahraga/Olah Raga 3.jpg",
    ),
    Book(
      "Bola Voli",
      "Panduan bola voli dasar",
      Author(
        "Sujarwo",
        70,
      ),
      "4.17",
      "assets/images/book/olahraga/Olah Raga 4.jpg",
    ),
    Book(
      "Bulu Tangkis Dasar",
      "Panduan bulu tangkis dasar",
      Author(
        "Dedhy Yuliawan",
        70,
      ),
      "4.18",
      "assets/images/book/olahraga/Olah Raga 5.jpg",
    ),
  ];
}

class Author {

  String fullname;
  int books;


  Author(this.fullname, this.books,);

}

List<Author> getAuthorList(){
  return <Author>[
    Author(
      "Stepanie Land",
      134,
    ),
    Author(
      "Sophie Mackintosh",
      123,
    ),
    Author(
      "Tara Conklin",
      112,
    ),
    Author(
      "Pam Jenoff",
      108,
    ),
    Author(
      "Karen Thompson",
      99,
    ),
    Author(
      "Greer Hendricks",
      90,
    ),
    Author(
      "Fiona Barton",
      87,
    ),
    Author(
      "Whitney Scharer",
      77,
    ),
    Author(
      "Andrea Bartz",
      75,
    ),
    Author(
      "Kristen Roupenian",
      70,
    ),
    Author(
      "Yangsze Choo",
      65,
    ),
  ];
}

class Filter {

  String name;

  Filter(this.name);

}
//
// List<Filter> getFilterList(){
//   return <Filter>[
//     Filter("CLASSICS"),
//     Filter("NEW"),
//     Filter("UPCOMING"),
//   ];
// }