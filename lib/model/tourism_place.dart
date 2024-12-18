class TourismPlace {
  String name;
  String location;
  String desc;
  String openDay;
  String ticketPrice;
  String imageCover;
  List<String> imageSpot;

  TourismPlace ({
    required this.name,
    required this.location,
    required this.desc,
    required this.openDay,
    required this.ticketPrice,
    required this.imageCover,
    required this.imageSpot
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Upas Hill', 
    location: 'Lembang', 
    desc: 'Jalan sukapura-sukabirus bojongsoang, dengan posisi yang cukup strategis antara kota dan kabupaten', 
    openDay: 'Open Everyday', 
    ticketPrice: 'Rp 15000', 
    imageCover: 'https://th.bing.com/th/id/OIP.Yc56F2HhlovBeE6hByjmxgHaEc?rs=1&pid=ImgDetMain.jpg', 
    imageSpot: [
      'https://s2.explorer.id/product/gallery/product-gallery-1726727323270.webp',
      'https://ayoglamping.com/wp-content/uploads/2024/03/upas3-768x422.jpg',
      'https://i.ytimg.com/vi/2TO16RqzOgM/maxresdefault.jpg'
    ]
  ),
  TourismPlace(
    name: 'Sunan Ibu - Patuha', 
    location: 'Ciwidey', 
    desc: 'Jalan sukapura-sukabirus bojongsoang, dengan posisi yang cukup strategis antara kota dan kabupaten', 
    openDay: 'Open Everyday', 
    ticketPrice: 'Rp 15000', 
    imageCover: 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/967/2023/09/22/WhatsApp-Image-2023-09-22-at-101605-3684501438.jpeg', 
    imageSpot: [
      'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01hg7k6bp663tbmrb6d5g9n0jn.jpg',
      'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01hg7k6bp663tbmrb6d5g9n0jn.jpg',
      'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01hg7k6bp663tbmrb6d5g9n0jn.jpg'
    ]
  ),
];