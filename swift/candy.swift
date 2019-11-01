class Candy {  
    let brand: String
    let type: String
    let caloriesPerServing: Int
    var containsNuts: Bool

    init(brand: String, type: String, caloriesPerServing: Int, containsNuts: Bool) {
        self.brand = brand
        self.type = type
        self.caloriesPerServing = caloriesPerServing
        self.containsNuts = containsNuts
    }  

    func getLabel() -> String {  
        if self.containsNuts {
            return "\(brand) \(type) \n calories per serving: \(caloriesPerServing) \n PRODUCT CONTAINS NUTS"
        }
        return  "\(brand) \(type) \n calories per serving: \(caloriesPerServing)"
    }
} 

typealias CandyStore = Array<Candy>

var c: CandyStore = [Candy(brand: "Hershey", type: "chocolate bar", caloriesPerServing: 200, containsNuts: false), Candy(brand: "Hershey", type: "chocolate bar", caloriesPerServing: 200, containsNuts: false), Candy(brand: "Haribo", type: "gummy bears", caloriesPerServing: 100, containsNuts: false), Candy(brand: "Snickers", type: "candy bar", caloriesPerServing: 150, containsNuts: true)]
