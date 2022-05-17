import UIKit

var greeting = "Hello, playground"


let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
label.backgroundColor = UIColor.red

label.text = greeting

//:varibles
let cons = "Hello World" //cons

var str = "hello XCode" //varible

str = "Changed"


//data types

//Character, String, Int, Double, Float, Bool
//all types starts with big alphabit

let x: Character = "q" // small alphabit must be

let y: String = "Hey Ios"

let z: Double = 2.0000

let integer: Int = Int(z) //convert to int from double

let c: Float = 2.0000699 //no more 6 after dot

let i: Int = 123

let b: Bool = true


//operators

let e = 1

var s = 0

s += e

let defaultName = "Steve"

var name: String? = nil

let myName = name ?? defaultName

//ternar
let bool = true

let t = bool ? 10 : 0

//range

1...10 // from 1 to 10

1..<10 // from 1 to 9


//interpolution str

let tepm = 12

let weatherDescription = "the weather is \(tepm)"


//arrays

let arrayOne = Array<Int>()
let arrayTwo = [Int]()
var arrayThree : [Int] = []
let arrayFour = [1,2,3,4,5]
let arrayFive = [Int](repeating: 10, count: 6) //reapting


arrayThree += arrayFive //add array to empty array

arrayFour[2]
arrayThree[1...3] = [15]
arrayThree

arrayThree.count - 1 //lenght

arrayThree.append(100) //add to array
arrayThree.insert(105, at: 2) // add with index

arrayThree.remove(at: 4)
arrayThree

//dictionary

let dictOne = Dictionary<String, String>()
let dictTwo = [String: String] ()
let dictThree: [String:String] = [:]
var nameAges = ["Ivan":2,"vialii":4,"Ilay":5]

nameAges.count
nameAges.isEmpty

nameAges["Ivan"] = 37 //update value

let deleteArgs = nameAges.updateValue(40, forKey: "Ivan") // alse update value

nameAges

//remove
nameAges["Ivan"] = nil
nameAges

let deleteValue = nameAges.removeValue(forKey: "Ilay")
nameAges

nameAges = [:] //it is like  removeAll


















