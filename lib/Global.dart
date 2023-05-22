class Global {
  static List<Map> homePage = [
    {
      'image': 'assets/image/earing.jpg',
      'name': ' Earring',
      'subtitle': 25,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'assets/image/hairpin.jpg',
      'name': ' HairPin',
      'subtitle': 14,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'assets/image/lipstick.jpg',
      'name': ' Lipstick',
      'subtitle': 20,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'assets/image/neckless.jpg',
      'name': ' Neckless',
      'subtitle': 40,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'assets/image/perfyum.jpg',
      'name': ' Perfume',
      'subtitle': 50,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'assets/image/purse.jpg',
      'name': ' Purse',
      'subtitle': 29,
      'total': 0,
      'i': 0,
    },
    {
      'image': 'assets/image/sunglasses.jpg',
      'name': ' Sunglasses',
      'subtitle': 15,
      'total': 0,
      'i': 0,
    },
  ];
  static List<Map<String, dynamic>> earBud = [
    {
      'image': 'assets/image/earbud.jpg',
      'Title': 'Truke ',
      'price': 50,
    },
    {
      'image': 'assets/image/earbud1.jpg',
      'Title': 'Buds',
      'price': 20,
    },
    {
      'image': 'assets/image/earbud2.jpg',
      'Title': 'EarBuds',
      'price': 70,
    },
    {
      'image': 'assets/image/earbud3.jpg',
      'Title': 'HeadPhone',
      'price': 80,
    },
    {
      'image': 'assets/image/earbud4.jpg',
      'Title': 'Bluetooth EarPhone',
      'price': 30,
    },
    {
      'image': 'assets/image/earbud5.jpg',
      'Title': 'Jabra',
      'price': 40,
    },
  ];
  static List<Map<dynamic, dynamic>> cart = [];
  static num shipping = 21;
  static num tax = 10;
  static num finalBill = 0;
  static num totalBill = 0;

  static DateTime dateTime = DateTime.now();
}
