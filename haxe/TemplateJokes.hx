class TemplateJokes {
  public static function main():Void {
    var story = "
      Once upon a time there was a ::personType:: named ::name::.
      Today, ::pronoun:: dreams of being a ::profession::.
      To achieve ::possessive:: goals, they must first buy ::(number):: ::storeItem::::if (number != 1)::s::end:: from ::storeName::.
      Next, ::pronoun:: must ::verb1:: ::(number):: ::storeItem::::if (number != 1)::s::end::.
      Finally, ::pronoun:: must ::verb2:: ::possessive:: ::product::.
      And that's how ::pronoun:: achieve ::possessive:: dreams using ::if (number != 1)::some::else::a::end:: ::storeItem::!
      ";
    var answers1 = {
      personType: "girl",
      name: "Joanne", 
      pronoun: "she",
      possessive: "their",
      profession: "firefighter",
      storeItem: "steel bucket",
      storeName: "Residence Depot",
      verb1: "shred",
      number: 9,
      verb2: "demolish",
      product: "bread machine",
    };
    var answers2 = {
      personType: "dinosaur",
      name: "Max", 
      pronoun: "he",
      possessive: "his",
      profession: "computer scientist",
      storeItem: "BBQ grill",
      storeName: "Donaldsons",
      verb1: "protect",
      number: 1,
      verb2: "yell",
      product: "coconut",
    };
    var template = new haxe.Template(story);
    trace(template.execute(answers1));
    trace(template.execute(answers2));
  }
}