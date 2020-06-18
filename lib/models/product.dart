import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final double price;
  final String title, description, image;
  final Category category;

  Product(
      {this.id,
      this.category,
      this.price,
      this.title,
      this.description,
      this.image});

  @override
  List<Object> get props => [id, category, price, title, description, image];
}

enum Category { wine, spirits, beer, accessories }

List<Product> products = [
  Product(
    id: 1,
    category: Category.wine,
    price: 9.99,
    title: "ED EDMUNDO CABERNET SAUVIGNON",
    image:
        "https://www.totalwine.com/dynamic/x490,sq/media/sys_master/twmmedia/h26/h19/11891399229470.png",
    description:
        "James Suckling-Mendoza, Argentina - \"Sweet black fruit, black olives and a leafy accent. Ripe, fleshy dark fruit with soft tannin, leading to a spicy finish. Drink now.\" What a fantastic Cabernet for the pricepoint, this wine overdelivers in every way!",
  ),
  Product(
      id: 2,
      category: Category.wine,
      price: 12.99,
      title: "MARCHESE DI BORGOSOLE SALICE SALENTINO",
      image:
          "https://www.totalwine.com/dynamic/x490,sq/media/sys_master/twmmedia/h54/hd8/11825856020510.png",
      description:
          "Italy - Ever wanted to try Italian wine but didn't know where to start? Here's your chance to get your hands on an easy-drinking, highly rated gem. Each sip is full of cherry, thyme and lavender flavors that work well all on their own or paired with a delicious grilled tomato bruschetta"),
  Product(
    id: 3,
    category: Category.wine,
    price: 19.99,
    title: "VENNSTONE PINOT NOIR TRI APPELLATION",
    image:
        "https://www.totalwine.com/dynamic/x490,sq/media/sys_master/twmmedia/h9b/h23/11931338407966.png",
    description:
        "California - We are big fans of Joe Wagner and we think you will be too! The creator of Belle Glos brings together the best fruit from Monterey, Sonoma, and Santa Barbara counties for a full-bodied fruit-bomb that's stunning with grilled salmon, pork ribs or mushroom pizza.",
  ),
  Product(
    id: 4,
    category: Category.spirits,
    price: 28.99,
    title: "TOWER VODKA",
    image:
        "https://www.totalwine.com/dynamic/x490,sq/media/sys_master/twmmedia/h93/hd1/12389155635230.png",
    description:
        "France- A great Vodka that doesn't take itself too seriously. Produced of the finest French wheat and distilled six times in the prestigious Cognac region. Enjoy neat, in a cocktail or as the base for the classic martini. 100% ORGANIC. Double Gold Medal-San Francisco Spirits Competition",
  ),
  Product(
      id: 5,
      category: Category.spirits,
      price: 24.99,
      title: "IDOL VODKA",
      image:
          "https://www.totalwine.com/dynamic/x490,sq/media/sys_master/twmmedia/hed/hf7/9914518339614.png",
      description:
          "IFrance- The only Vodka made from small lots of noble Chardonnay and Pinot Noir grapes from Burgundy, France. Slowly distilled 7 times from the pristine waters of the Cote d'Or and filtered 5 times for unmatched purity and smoothness. Silver Medal- San Francisco Spirits Competition."),
  Product(
    id: 6,
    category: Category.spirits,
    price: 22.99,
    title: "TWO FOUNDERS 80 ACRES VODKA",
    image:
        "https://www.totalwine.com/dynamic/x490,sq/media/sys_master/twmmedia/h02/h0b/11185902682142.png",
    description:
        "Iowa - Born in the heartland and distilled slowly-5 times- to perfect a vodka as strong and genuine as the great state of Iowa. Made from the richest and sweetest corn in the US. No fuss, nothin' fake, just good, clean, American spirit. 2019 Wine Enthusiast \"Best Buy\"",
  ),
  Product(
    id: 7,
    category: Category.beer,
    price: 28.99,
    title: "SIERRA NEVADA HAZY LITTLE THING IPA",
    image:
        "https://www.totalwine.com/dynamic/x490,sq/media/sys_master/twmmedia/h91/hd9/12048176283678.png",
    description:
        "California- American India Pale Ale (IPA0- 6.7% ABV. 40 IBUs. Hazy Little Thing is a juicy, unfiltered IPA that's as hazy as the day is long. Serving this one raw and straight from the tanks to let the fruit-forward hop flavors shine.",
  ),
  Product(
    id: 8,
    category: Category.beer,
    price: 24.99,
    title: "SIERRA NEVADA TORPEDO EXTRA IPA",
    image:
        "https://www.totalwine.com/dynamic/x490,sq/media/sys_master/twmmedia/hfc/h0a/8799523962910.png",
    description:
        "California & NC- American India Pale Ale (IPA)- 7.2% ABV. In effort to provide the boldest hop flavors and aromas possible, Sierra Nevada has developed the \"Hop Torpedo\", a revolution in dry hopping and invention designed to harness all the great complexity that whole-cone hops offer.",
  ),
  Product(
    id: 9,
    category: Category.beer,
    price: 22.99,
    title: "SIERRA NEVADA TORPEDO EXTRA IPA",
    image:
        "https://www.totalwine.com/dynamic/x490,sq/media/sys_master/twmmedia/h11/hd2/11735051665438.png",
    description:
        "California & NC- American India Pale Ale (IPA)- 7.2% ABV. In effort to provide the boldest hop flavors and aromas possible, Sierra Nevada has developed the \"Hop Torpedo\", a revolution in dry hopping and invention designed to harness all the great complexity that whole-cone hops offer.",
  ),
  Product(
    id: 10,
    category: Category.accessories,
    price: 28.99,
    title: "VINTURI - RED WINE AERATOR",
    image:
        "https://www.totalwine.com/dynamic/x490,sq/media/sys_master/twmmedia/h22/h66/8805920407582.png",
    description:
        "Wine which has been allowed to breathe tastes better. Vinturi's patent pending design speeds up this process with ease and convenience. Simply hold Vinturi over a glass and pour wine through. You'll notice a better bouquet, enhanced flavors and smoother finish! A great gift for anyone.",
  ),
  Product(
    id: 11,
    category: Category.accessories,
    price: 4.99,
    title: "RABBIT - BOTTLE STOPPERS 2PK",
    image:
        "https://www.totalwine.com/dynamic/x490,sq/media/sys_master/twmmedia/h73/hff/8796359295006.png",
    description:
        "Designed and priced to stop traffic, these stoppers seal wine and soda bottles air-tight. Happy colors and shiny stainless tops make them downright irresistible. A great addition to any bottle of wine!",
  ),
  Product(
    id: 12,
    category: Category.accessories,
    price: 19.99,
    title: "THE WAND - WINE FILTER 10PK",
    image:
        "https://www.totalwine.com/dynamic/x490,sq/media/sys_master/twmmedia/h51/hbe/11941468340254.png",
    description:
        "Savor the Wine. Skip the Side Effects. The Wand alleviate headaches, congestion and flushing caused by histamines and sulfite preservatives in wine. Enhances taste of wine through rapid aeration. Great for on-the-go, easily fits in a pocket or purse!",
  ),
];
