import 'package:flutter/material.dart';
import 'package:ivyhack/models/company_model.dart';

class Constant {
  static const String DATA_COLLECTION_NAME = "user_data";
  static Color LIGHT_GREEN = Color(0xB1E7C7).withOpacity(0.31);

  static Map<String, double> SAMPLE_HISTORICAL_SCORES = {
    DateTime(2020, 9, 27).toString(): 5,
    DateTime(2020, 9, 28).toString(): 8,
    DateTime(2020, 9, 29).toString(): 5,
    DateTime(2020, 9, 30).toString(): 1,
    DateTime(2020, 10, 1).toString(): 0,
    DateTime(2020, 10, 2).toString(): 2,
    DateTime(2020, 10, 3).toString(): -5,
    DateTime(2020, 10, 4).toString(): 3,
    DateTime(2020, 10, 5).toString(): 2,
  };

  static List<List> SAMPLE_HISTORICAL_ACTS = [
    [DateTime(2020, 9, 29).toString(), "Eat a vegan meal."],
    [DateTime(2020, 9, 30).toString(), "Eat a vegan meal."],
    [DateTime(2020, 9, 30).toString(), "Eat a vegan meal."],
    [DateTime(2020, 9, 30).toString(), "Eat a vegan meal."],
    [DateTime(2020, 10, 1).toString(), "Ride bicycle for 5 miles"],
    [DateTime(2020, 10, 2).toString(), "Carpool with coworkers."],
    [DateTime(2020, 10, 3).toString(), "Eat a vegan meal."],
    [DateTime(2020, 10, 4).toString(), "Use reusable water bottle."],
    [DateTime(2020, 10, 5).toString(), "Carpool with coworkers."],
  ];
  
  static List<Company> DONATE_COMPANIES = [
    Company(
        name: "American Red Cross",
        subtitle: "Domestic",
        imageURL:"https://prnewswire2-a.akamaihd.net/p/1893751/sp/189375100/thumbnail/entry_id/1_fgp9fp3h/def_height/1414/def_width/2700/version/100011/type/2/q/100",
        briefDescription: "Providing emergency assistance, disaster relief, and education in the U.S.",
        fullDescription:"The American branch was founded in 1881 by Clara Barton. Their mission is to alleviate and prevent human suffering by mobilizing volunteer services. Some of the great services that they provide are a disaster and emergency relief, blood donations, military/veteran services, international services, and preparedness education programs. They have actively served and aided in disasters, such as Hurricane Katrina, California and Oregon wildfires, and Midwest floods.",
        isDetailsDisplayable: true, // So far only this one has a zoom in version
    ),
    Company(
        name: "Habitat for Humanity",
        subtitle: "International",
        imageURL:"https://bloximages.chicago2.vip.townnews.com/hjnews.com/content/tncms/assets/v3/editorial/b/66/b66707d9-4202-579c-87d6-673451f8b167/5e405fd6a6331.image.jpg?resize=1440%2C1440",
        briefDescription: "Helping families build afforadble homes around the world.",
        fullDescription: "Founded in 1976 by the Fullers family with the goal of building homes and community. They want to give homeowners the ability to achieve strength, stability, and independence so that they can build better lives for their families. They operate in the U.S. and in over 70 countries around the world.",
    ),
    Company(
      name: "Food for the Poor",
      subtitle: "International",
      imageURL: "https://images.squarespace-cdn.com/content/v1/546e519fe4b0af730f4cfc1a/1421332887057-V05EUKEOFA7HWFEGKY04/ke17ZwdGBToddI8pDm48kClvA4G_vKW9Ha8QcuCvxsJZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIF92rWA4Tx7AADI6n91YqEggn73vpfpTRw9c1Hv5eHv4/FFP-stacked-logo_padding.png",
      briefDescription: "Providing food, medicine, and shelter to the poor in Latin America.",
      fullDescription: "Providing food, medicine, and shelter to the poor in Latin America.",
    ),
    Company(
      name: "Wildlife Conservation Society",
      subtitle: "International",
      imageURL: "https://pentagram-production.imgix.net/94ec776c-45bc-47b9-acc9-a3d9202b3892/mb_wildlifeconservationsociety_02.jpg?rect=%2C%2C%2C&w=640&crop=1&fm=jpg&q=70&auto=format&fit=crop&h=400",
      briefDescription: "Conserving wildlife habitats in 14 priority regions around the world.",
      fullDescription: "Originally founded with the New York Zoological Society in 1895. They envisioned an organization that would save wildlife in North America and connects people to nature through the Bronx Zoo.\n\nAs they transformed into WCS, they have expanded field conservation operations to close to 60 nations and all the world's oceans. Using science and our wildlife expertise, they supported governments and communities in the creation or expansion of 245 protected areas—from the remote mountains of Afghanistan to the windswept wilderness of Chile's Tierra del Fuego.",
    ),
    Company(
      name: "Save the Children",
      subtitle: "International",
      imageURL: "https://nfpsynergy.net/image-for/node/3074?facebookPeaseUpdateYourCache=1",
      briefDescription: "Committed to health, hunger, and education for all children.",
      fullDescription: "Founded by Eglantyne Jebb in 1919 around the commitment that all children should have the right to grow up healthy, educated, and safe. They provide aid and support for health, hunger, and education for children through domestic and global programs",
    ),
    Company(
      name: "Task Force for Global Health",
      subtitle: "International",
      imageURL: "https://s3.amazonaws.com/saportakinsta/wp-content/uploads/2020/04/TFGH-Logo-bluebck2.png",
      briefDescription: "Dedicated to improving vaccination rates in developing countries.",
      fullDescription: "Founded in 1984 by Dr.Bill Foege, Carol Walters, and Bill Watson. Their goal was to increase childhood immunization rates in developing countries. Their organization has since expanded to develop 17 global programs that address health needs in regions around the world. These initiatives help cover tropical diseases, infectious diseases, vaccination, polio, and more",
    ),    
  ];
}
