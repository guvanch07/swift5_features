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

















