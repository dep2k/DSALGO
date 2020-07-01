import UIKit

class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased: Bool
}
var item = ShoppingListItem()




/*
 Because all properties of the ShoppingListItem class have default values, and because it is a base class with no superclass, ShoppingListItem automatically gains a default initializer implementation that creates a new instance with all of its properties set to their default values.*/

struct  ShoppingListStruct {
    var name: String?
    var quantity = 1
    var purchased: Bool
}

//var s = ShoppingListStruct()
var s2 = ShoppingListStruct(name: "name", quantity: 22, purchased: false)
//var s3 = ShoppingListStruct(name: "new")

let _ = ShoppingListStruct(purchased: true)
let _ = ShoppingListStruct(quantity: 0 , purchased: false)


