import UIKit

var str = "Hello, playground"

var objects = [SomeObject]()      //array of objects

var filteredObject = [SomeObject]()  //filtered array
var isSearching = false

struct SomeObject {
    var sectionName: String
    var sectionObjects : [History]
}

struct History {
    var firstName: String
    var lastName: Int
}

func searchBar(_ text: String) {
    filteredObject = objects.filter({ (obj: SomeObject) -> Bool in
        return obj.sectionObjects.filter { $0.firstName.contains(text.lowercased())}.isEmpty
    })
    print("====", filteredObject, "fill===")
}


let history = History(firstName: "Henry", lastName: 1)
let anotherHistroy = History(firstName: "Eloka", lastName: 2)
let historyArray = [history, anotherHistroy]

let newObject = SomeObject(sectionName: "Section 1", sectionObjects: historyArray)

objects.append(newObject)
searchBar("Hn") // printing of filtered object should not have contens of another history
