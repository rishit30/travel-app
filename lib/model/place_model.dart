class PlaceInfo {
  final String location, image, name, desc;
  final int distance, days;

  PlaceInfo({
    required this.desc,
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.days,
  });
}

List places = [
  PlaceInfo(
    desc: "The Taj Mahal, located in Agra, India, is an iconic masterpiece and a UNESCO World Heritage Site. Built in the 17th century by Emperor Shah Jahan as a mausoleum for his beloved wife, Mumtaz Mahal, it is considered one of the most beautiful structures in the world. The white marble mausoleum stands on a symmetrical platform, surrounded by lush gardens and reflecting pools. Its intricate architecture, delicate marble inlays, and mesmerizing symmetrical design make it a breathtaking sight. The Taj Mahal attracts millions of visitors annually, who come to admire its beauty and learn about its poignant love story.", 
    name: 'Taj Mahal', 
    image: 'assets/images/taj.jpg', 
    location: 'India', 
    distance: 500, 
    days: 3
    ),

  PlaceInfo(
    desc: "The Red Fort, situated in Old Delhi, India, is an architectural marvel that symbolizes the grandeur of the Mughal era. Constructed in the 17th century by Emperor Shah Jahan, it served as the main residence of the Mughal emperors for nearly 200 years. Made from red sandstone, the fort encompasses impressive walls, imposing gateways, and exquisite palaces within its massive complex. Its highlights include the Diwan-i-Aam (Hall of Public Audience), the Diwan-i-Khas (Hall of Private Audience), and the beautiful gardens. Today, the Red Fort is a UNESCO World Heritage Site and an important historical and cultural landmark of India.", 
    name: 'Red Fort', 
    image: 'assets/images/red-fort.jpg', 
    location: 'India', 
    distance: 1000, 
    days: 7
    ),

  PlaceInfo(
    desc: "Goa, a coastal state on the western coast of India, is renowned for its stunning beaches, vibrant culture, and colonial heritage. It offers a unique blend of Indian and Portuguese influences due to its colonial past. The region boasts over 100 kilometers of pristine coastline, with sandy beaches and palm-fringed shores. Besides its natural beauty, Goa is famous for its lively nightlife, water sports, and beach parties. The state also houses numerous churches, temples, and Portuguese-era buildings, reflecting its rich history. Goa's warm climate, relaxed atmosphere, and diverse attractions make it a popular destination for tourists from around the world.", 
    name: 'Goa', 
    image: 'assets/images/Galapagos-Islands.jpeg', 
    location: 'India', 
    distance: 47000, 
    days: 22
    ),

  PlaceInfo(
    desc: "Bangalore Palace, located in the heart of Bangalore, Karnataka, is a magnificent structure that showcases a blend of Tudor and Scottish Gothic architectural styles. Built in the late 19th century, the palace was inspired by the Windsor Castle in England and features towering turrets, elegant arches, and beautiful woodwork. The interiors are equally impressive, adorned with exquisite paintings, stained glass windows, and antique furniture. The palace also houses a museum displaying artifacts and photographs that depict the history of the royal family. Bangalore Palace is a popular tourist attraction and serves as a venue for cultural events, exhibitions, and concerts.", 
    name: 'Bangalore Palace', 
    image: 'assets/images/bangalore-palace.jpg', 
    location: 'India', 
    distance: 17000, 
    days: 15
    ),  
];
