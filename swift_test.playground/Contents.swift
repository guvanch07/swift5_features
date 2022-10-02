import UIKit
import os

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

var y: String = "Hey Ios"

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
let arrayTwo = [Int]() //
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




//sets

let setOne = Set<String>()
let setTwo: Set<String> = []
var setThree: Set = [1,2,3,4]

setThree.insert(6)
setThree.insert(7) //true

setThree.remove(6)

let boolValue = setThree.contains(1)
boolValue

let setFromOnetothree: Set = [1,2,3,4]
let setFromFourToNine: Set = [1,4,5,6,7,8,9]


let allValueArray = setFromOnetothree.union(setFromFourToNine).sorted()
let interection = setFromOnetothree.intersection(setFromFourToNine) //пересечение

let notRepetedSet = setFromOnetothree.symmetricDifference(setFromFourToNine).sorted()
let substractedValue = setFromOnetothree.subtracting(setFromFourToNine).sorted() // no repeting in setFromFourToNine


//if else

//let b = 3
//
//if 1...4 ~= b {
//    print("hello")
//}


//instruction guard

func someFunc(a: Int, b: Int){
    guard a == b else{ return }
    guard b == 11 else{ return }
    
    if a == b {
        if b == 11 {
            //code
        }
    }
}

for i in 1...5 {
    guard i != 3 else { break }
    print (i)
}

for i in 1...5 {
    if i != 3{
        break
        
    }
    print (i)
}

let totalScore = 10

switch totalScore{
case 20:
    print("yak")
    fallthrough
case 30, 35: // 30 or 35
    print("yak")
case 40:
    print("yak")
case 60...100:
    print("yak")
default:
    break
}


//loop for in

let array = [1,2,3,4,5]

for i in array{
    print(i)
}

//let string = "some string"
//
//for char in string.characters {
//    print(char)
//}

let nameAndFingers = ["ivan": 20, "Sveta": 23, "oda": 21]

for (name, numberoffinges) in nameAndFingers{ // iteract from maps
    print ("bla bla \(name) bla bla \(numberoffinges)")
}


for (index,element) in array.enumerated() { // itarble lists
    print("this is index \(index) this is value \(element)")
}


for i in stride(from: 0, through: 15, by: 5) { //!
    print(i)
}

// while loop

var timer = 5

print("counting down")

while timer > 0{
    print(timer)
    timer -= 1
}

print("start")

// reapte while
// iterating is running then checking condition
var timer2 = 5
repeat{
    print(timer2)
    timer2 -= 1
} while timer2 > 0


//fucntions

//1 void
func sayHello(){
    print("hello")
}

func counting(parm: Int){
    var parm = parm
    parm += 1
}

counting(parm: 50)

func returing () -> Int {
    return 10
}
 let a = returing()
a

func  calcMoney(list: [Int]) -> Int{
    var n = 0
    func sayHello(){
        print(n)
    }
    for item in list{
        n += item
    }
    sayHello()
    return n
}
calcMoney(list: [1,2,3,4,5])

func sumCounts(allintegers integers: Int...) -> Int{  // more ints
    
    var sum = 0
    
    for i in integers{
        sum += i
    }
    
    
    return sum
}

sumCounts(allintegers: 1,2,3,4,5,6,7,8)

//if one of the parametrs dont need

func calling (_:Int) -> Int{
    return 10
}
calling(15)

// func call another func
func whereIYou(missed:Bool) -> (Int)-> Int{
    func missCountUp (input: Int) -> Int {return input + 1}
    func missCountDown (input: Int) -> Int {return input - 1}
    
    return missed ? missCountUp : missCountDown
}
 var n = 0
n = whereIYou(missed: true)(n)
n = whereIYou(missed: false)(n)

// clouser or lamda

func reaprt3times (clouser: () -> ()){
    for _ in 1...5 {
        clouser()
    }
}

let clouser = { () -> () in //type
    print("hello world")
}

reaprt3times(clouser: clouser) //clouser

//замкание
reaprt3times {
    () -> () in //type
        print("hello world")
}


let unsortedArray = [1,5,3,4,32,657,6443,5,8,75]

let sortedArray = unsortedArray.sorted {
    
(number1: Int, number2: Int)-> Bool in
    return number1 > number2
}



//tuple kortej

let one = 1
let two = 2
let three = 3

(one,two,three)

let boy = (5,"Sergei")

boy.0
boy.1

let (first,second,third) = (1,2,3)
first
second


let greenPencil = (color : "red", lenght : 23, weight: 130)
let(greenColor,greenLenght,greenWeight) = greenPencil


let agesAndNames = ["misha": 30, "igor": 28, "vadim": 50]

var age = 0
var nameee = ""

for (nameIn,ageIn) in agesAndNames{
    if age < ageIn{
        age = ageIn
        nameee = nameIn
    }
}
age
nameee





// OPTIONALS

var fuel: Int?
fuel = 20
//fuel = nil

print("\(fuel ?? 0) liters left")

if let avaibleFuel = fuel {
    print("\(avaibleFuel)leters left")
    
}else{
    print("no fuel data avaible")
}

func checkFuel() {
    guard let avaibleFuel = fuel else{
        print("no fuels data avaible")
        return
    }
    print("\(avaibleFuel) data avaible")
}

checkFuel()


// CLASSES

class Human {
    
    var name: String
    var age: Int?
    var hairs: Bool
    
    func tellAboutMe() -> String {
        return "Hello my name is \(name)"
    }
    
    func description() -> String {
        if let humanAge = age {
            return "hello! My name is \(name) and I'am \(humanAge)"
        }else {
            return "Hello! My name is \(name)"
        }
    }
    init(name: String, age: Int?, hairs: Bool) {
        self.hairs = hairs
        self.age = age
        self.name = name
    }
    init() {
        name = "Vasyok"
        age = nil
        hairs = false
    }
}

let humanOne = Human()

humanOne.age = 30

let hum = Human(name: "yess", age: 10, hairs: false)
let hum1 = Human()

// inhertance


// final is cannot to allow inheratance
class Child: Human{
    var toy = "Horse"
    
    override func tellAboutMe() -> String {
        let originalText = super.tellAboutMe()
        return originalText + "And I have \(self.toy)"
    }
    
     init(toy:String,name:String) {
         self.toy = toy
         
         
         super.init(name: "", age: 12, hairs: false)
         
        
    }
    
}

let child = Child(toy: "kel", name: "cat")


//computed properties, it is setter

class Rectangualar{
    let height: Int
    let width: Int
    let depth: Int
    class var type: Int {return 10} // it is like static type
    
    var volume: Int {
        return height * width * depth
    }
    
    init(height:Int,width:Int,depth: Int) {
        self.height = height
        self.width = width
        self.depth = depth
    }
}
Rectangualar.type

let rect = Rectangualar(height: 10, width: 23, depth: 34)

rect.volume

class NewPerson{
    var name: String
    var secondName: String
    
    var fullName: String{
        get{
            return name + " " + secondName
        }
        
        set(anotherValue){
            let array = anotherValue.components(separatedBy: " ")
            name = array[0]
            secondName = array[1]
        }
        
    }
    
    init(name: String, secondName: String) {
        self.name = name
        self.secondName = secondName
    }
}

let person = NewPerson(name: "ilya", secondName: "akulow")
person.fullName

person.name
person.secondName
person.fullName = "Zaida Petrova"
person.name

// lazy properties

func bigDataProcessingFunc() -> String {
    return "Very long process"
}

class Processing {
    let small = "very small"
    let average = "average"
    lazy var big = bigDataProcessingFunc()
}

let process = Processing()


// observer propertiies

class SecretLabEmployee{
    
    var accessLavel = 0 {
        willSet(value){
            print("new boss is about to come")
            print("new access level is \(value)")
        }
        didSet{
            if accessLavel > 0 {
                accessToDB = true
            }else{
                accessToDB = false
            }
            
            print("new boss is about to come")
            print("new access level is \(oldValue)")
        }
    }
    var accessToDB = false
}

let employee = SecretLabEmployee()
employee.accessLavel
employee.accessToDB

employee.accessLavel = 1
employee.accessToDB

//typealias

typealias DoubleInteger = (Int,Int)
let someConstans: DoubleInteger = (1,2)

typealias DictionaryType = [String : Int]
var dictionary : DictionaryType = [:]
dictionary["Apartment123"] = 123
dictionary

// enums

enum Movement: Int{
    case forward = 10
    case backward = 23
    case left = 101
    case reight = 123
    
}

let movementdirection = Movement.backward.rawValue


enum Device {
    case IPad (color: String), IPhone
    
    var year: Int {
        switch self {
        case .IPhone: return 2009
        case .IPad(let color) where color == "black" : return 2005
        case .IPad: return 2010
        }
    }
    }

enum Charachter {
    enum Weapon: Int {
        case sword = 4
        case wand = 10
        
        var damage: Int {
            return rawValue * 10
        }
    }
    enum CharacterType {
        case knife
        case mage
    }
}

let charWeapon = Charachter.Weapon.sword.damage

indirect enum Lunch{
    case salad
    case soup
    case meal(Lunch,Lunch)
}

let lunch = Lunch.meal(.salad, .soup)

// struct

class Site {}

let firstSite = Site()
let secondSite = Site()// equal
let thirdSite = secondSite// equal

if (secondSite === thirdSite){
    print("===")
    
}else{
    print("not ===")
    
}


class Furnature{
    
}
class Bed: Furnature{}

class Table: Furnature{}

var arrayOfFurnuture = [Furnature]()

arrayOfFurnuture.append(Bed())
arrayOfFurnuture.append(Bed())
arrayOfFurnuture.append(Bed())

arrayOfFurnuture.append(Table())
arrayOfFurnuture.append(Table())
arrayOfFurnuture.append(Table())

var bed = 0
var table = 0

for item in arrayOfFurnuture{
    if item is Bed{
        bed += 1
    }else {
        table += 1
    }
}

for item in arrayOfFurnuture{
    if item is Bed{
        _ = item as! Bed
        bed += 1
    }
}

for item in arrayOfFurnuture{
    if let bedforSure = item as? Bed{
        bed += 1
        bedforSure.self
    }
}

// arc


class Person{
    weak var dog: Dog?
    
    deinit{
        print("Person is free")
    }
}

class Dog {
    unowned var person: Person
    
    init() {
        self.person = Person()
    }
    
    deinit{
        print("Dog is free")
    }
}




let firstScope = true
let secondScope = false

if firstScope {
    
    
    let closureArc: () -> ()?
    
    if secondScope{
        
        let person = Person()
        let dog = Dog()
        
        closureArc = {[weak person] in
            print(person ?? "")
        }
        
        person.dog = dog
        dog.person = person
        
        print("secondScope is ended")
    }
    print("first has ended")
}
print("finish")


var yess = "a"

let closure  = { [x] () -> () in
    print(x)
}
clouser()

yess = "b"

clouser()


// error handling


enum PossibleErrors: Error{
    case notInStock
    case notEnoughMoney
}




struct Book{
    let price: Int
    var count: Int
}

class Library{
    var deposite = 11
    var libraryBooks = ["Book1": Book(price: 10, count: 3),"Book2": Book(price: 40, count: 20),"Book3": Book(price: 30, count: 0)]
    
    func getTheBook(withName: String) throws{
        guard var book = libraryBooks[withName] else {
            throw PossibleErrors.notInStock
        }
        guard book.count > 0 else {
            throw PossibleErrors.notInStock
        }
        guard book.price <= deposite else{
            throw PossibleErrors.notEnoughMoney
        }
        deposite -= book.price
        book.count -= 1
        libraryBooks[withName] = book
        print("You get the book: \(withName)")
    }
}

let library = Library()
try? library.getTheBook(withName: "Book1")

do{
    try library.getTheBook(withName: "Book2")
}catch PossibleErrors.notEnoughMoney{
    print("not enought money")
    
}catch PossibleErrors.notInStock{
    print("not in the stock")
}

func doConnection() throws -> Int{
    return 10
}
let oneVersion = try? doConnection()
var twoVersion: Int?

do{
    twoVersion = try doConnection()
}catch{
    twoVersion = nil
}

var attempt = 0





func whatEverFuntion(parms:Int) -> Int{
    defer{
        attempt += 2
    }
    defer{
        attempt *= 10 // start callind from down
    }
    switch parms{
    case 0: return 100
    case 1: return 200
    default: return 400
    }
}

whatEverFuntion(parms: 1)

//subScript

//struct WorkPlace{
//    var table: String
//    var workPlace : [String]
//
//    subscript(index:Int) -> String?{
//
//        get{
//            switch index {
//            case 0: return table
//            case 1..<workPlace.count + 1 : return workPlace[index - 1]
//            default: return nil
//            }
//        }
//
//        set{
//            switch index {
//            case 0: return table = newValue ?? ""
//            case 1..<workPlace.count + 1 : return workPlace[index - 1] = newValue ?? ""
//            default: break
//        }
//    }
//}
//
//    var work = WorkPlace(table: "table", workPlace: ["chair","airchair","amp"])
//    work.workPlace[1]
//    work[1]
//

// extension

extension Int{
    var isEven: Bool{
        return self % 2 == 0 ? true : false
    }
    func power(powerValue: Int) -> Int{
        var tempValue = self
        for _ in 1..<powerValue {
            tempValue *= self
        }
        return tempValue
    }
}

let newA = 12

newA.isEven
newA.power(powerValue: 10)



let integers = [1,4,5,6,2,7,3,6,3,4]
func filter (numbers: [Int], closure: (Int) -> (Bool)) -> [Int] {
    var filteredNumbers: [Int] = []
    for number in numbers {
        if closure(number) {
            filteredNumbers.append(number)
        }
    }
    return filteredNumbers
}
func matrix(i : Int) -> Bool {
    return i % 2 == 1
}
print(filter(numbers: integers, closure: matrix))


class Personn{
    var job: Job? = Job()
    var age: Int
    var year: Int
    var name: String
    var lastName: String
    
    var sum: Int{
       
            age + year
   
    }
    
    var fullName: String {
        get{
            name + lastName
        }
        set{
            let initialValue = newValue.components(separatedBy: " ")
            name = initialValue.first ?? ""
            lastName = initialValue.last ?? ""
            
        }
       
    }
    
    init(age: Int, year:Int,name:String,lastName:String){
        self.age = age
        self.year = year
        self.name = name
        self.lastName = lastName
    }
    
    
}

class Job{}

let personn = Personn(age: 23, year: 2022,name: "murat",lastName: "yakubow")

personn.sum
personn.fullName = "jonh jonhson"

personn.name
personn.lastName


class Girl {
    var name = "Jane"
    var didLike: Bool
    var phoneNumber = 555381
    init(didLike: Bool) {
        self.didLike = didLike
    }
    func tellAboutMe() {
        if didLike {
            print("Hi, my name is \(name) and this is my phone number \(phoneNumber)")
        } else {
            print("Hi! I'm \(name). Bye, I have to go.")
        }
    }
}

let girl = Girl(didLike: true)

girl.tellAboutMe()
typealias Tuple = (Int, Int, String)
                   
let erer: Tuple = (1,2,"ew")

enum MealType{
    case breakFast(food: String)
    case dinner(wine:String)

    var time: Int{
        switch self{case .breakFast(food: _):
            print(10.59)
        case .dinner(wine: _):
            print(23.59)
        }
    }
}

var myMeal = MealType.dinner(wine: "wino")

switch myMeal {



case .breakFast(food: let food):
    print("food is \(food)")
case .dinner(wine: let wine):
    print("wine is \(wine)")
}


enum RainbowColors: Int {
    case red, orange, yellow, green, blue, indigo, violet
}
let orderNumber = RainbowColors.yellow.rawValue


enum Weather {
    case sunny
    case rainy
    case windy(speed: Int)
}
let today: Weather = .windy(speed: 12)
 
switch today {
case .sunny:
    print("Let's go for a walk")
case .rainy:
    print("Don't forget to take an umbrella")
case .windy(let speed) where speed >= 12:
    print("You should stay at home")
default:
    print("It is a bit windy")
}
