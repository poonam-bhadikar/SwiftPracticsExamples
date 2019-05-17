//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//********************************************************************************


print( "Defining constants by using let (does not allow you to mutate this further)")
let swiftIntro="Hey swift"
let myName:String="Poonam bhadikar"

//********************************************************************************
print("Topic : Type alices")


class Company
{
    var name:String = ""
    var type:String = ""
    
}

typealias Name = String
typealias ArrayOfCompany = Array<Company>

var companies:ArrayOfCompany = ArrayOfCompany()

var vignet:Company = Company()
vignet.name = "Vignet"
var otherCompany:Company = Company()
otherCompany.name = "OtherCompany"

companies.append(vignet)
companies.append(otherCompany)

print("List of companies")

for company in companies
{
    
    print("\(company.name) \n")
}


//Other examples
typealias GridPoint = (Int, Int)
typealias CompletionHandler = (Error?) -> Void

//********************************************************************************

print("Topic : Tuples \n ")
let studentResult:(name:String,percent:Int) = ("Poonam",80)

//Accessing :way 1
let nameOfStudent = studentResult.0
let scoreOfStudent = studentResult.1

//Way 2
var name = studentResult.name
var percent = studentResult.percent

print(" \(nameOfStudent) scored \(scoreOfStudent) % ")


//********************************************************************************
print("Topic : Optional")

var IntSomenumber:Int? = Int("poonam")
print("\(IntSomenumber)")



var glassContains:String?
//Throws if we try to unwrap nil
//print("Glass contains \(glassContains!)")


glassContains = "milk"
print("Glass contains \(glassContains!)")



//nil

//Not Possible
//var something = nil

//Possible
var something :String? = nil

print("Topic : Optional Binding")

var someOptionalNumber:Int?

//someOptionalNumber =  5

if let number = someOptionalNumber //We can use if var also
{
    print("Number is \(number)") // no need to use ! now
    
}
else{
    print("someOptionalNumbermber is nil")
}

//Multiple  ckeck in if let

var firstNum:Int?
var secondNum:Int?

firstNum = 5
secondNum = 10
if let num1 = firstNum, let num2 = secondNum
{
    var sum = num1 + num2
}
else
{
    
    print("sum not posible ")
}

//********************************************************************************
print("Topic : Implicitly Unwrapped Optionals")


var implicitlyUnwrappedOptional:Int!

//var implicitlyUnwrappedOptional :String! = "Implicitly Unwrapped Optionals"


var text = implicitlyUnwrappedOptional
print("\(implicitlyUnwrappedOptional)")

//********************************************************************************

print("Topic : Error Handling")


enum printErrors :String,Error // Error protocol
{
    case noPrinterAvailable
    case noPagesAvailable
    
}
class ErrorHandlingDemo
    
{
    
    func printPaper() throws
    {
        let errorType = "noPrinter"
        let errorType1 = "noPages"
        
        if (errorType == "noPrinter")
        {
            throw printErrors.noPrinterAvailable
        }
        //        if errorType1 == "noPages"
        //
        //        {
        //            throw printErrors.noPagesAvailable
        //        }
        
    }
    
}


var demo :ErrorHandlingDemo = ErrorHandlingDemo()

do {
    try demo.printPaper()
    print(" Printing opration done successfully")
}
    
catch printErrors.noPrinterAvailable
{
    print(printErrors.noPrinterAvailable.rawValue)
} catch printErrors.noPagesAvailable
{
    print(printErrors.noPagesAvailable.rawValue)
}


//********************************************************************************

print("Topic : Operators")



//Assignment
var variable = 10
var secondVariable:Int
secondVariable = variable
print("Second var is \(secondVariable)")

var str1 = "poonam"
var str2 = "poonam"

var (x, y) = (1, 2)
print("\(x)")


//Throws error on following code
//if (str1 = str2){
//
//}

//Aithmatic oprators
var aOprators = x+y
aOprators = x-y
aOprators = x*y
aOprators = x/y

//Remainder op


var remainder = (9 % 4)
remainder = (-9 % 4)
remainder = (9 % -4)
remainder = (-9 % -4)

//Compound operators
x += 2
let someVAl = x += 2 //Not possible,returns nothing
print ("\(someVAl)")




var apple = "apple"
var bird = "bird"

if apple < bird{
    
    
    
}
if((3, "apple") < (3, "bird"))
{
    
}

// ternary operator
let contentHeight = 40
let hasHeader = false
let rowHeight = contentHeight + (hasHeader ? 50 : 20)


//Nil-Coalescing Operator

var defaultValue = "Blue"
var color:String?
//color = "Purple"
var favoriteColor = color ?? defaultValue




//Range operators
var daysOfWeek = ["Mon","Tues","Wed", "Thur","Fri","Sat","Sunday"]



//closed range
print(" closed range:")
for index in 0...4
{
    print("\(daysOfWeek[index])")
}


//Half open range
print(" Half open range")
for index in 0..<5
{
    print("\(daysOfWeek[index])")
}


//one sided range
print("Working days ")
for day in daysOfWeek[...4]
{
    
    print("\(day)")
    
}
print("\n Weekend" )
for day in daysOfWeek[5...]
{
    
    print("\(day)")
    
}
print("Working days ")

for day in daysOfWeek[..<5]
{
    
    print("\(day)")
}



//********************************************************************************

print("Topic : Collection")
print("Topic : Arrays")


var arrayWithDefaultVAlues:[String] = Array(repeating:"0.1", count:2)

var arrayWithDefaultVAlues1:[String] = Array(repeating:"DefaultString", count:2)

var arrayWithDefaultVAluesCombined = arrayWithDefaultVAlues + arrayWithDefaultVAlues1

var ArrayOfPeopleInTeam=[String]()
ArrayOfPeopleInTeam.append("Vishnu")
ArrayOfPeopleInTeam.insert("Vishal", at: 1)
ArrayOfPeopleInTeam += ["Nidhi"]

ArrayOfPeopleInTeam[0] = "Vishal"
ArrayOfPeopleInTeam[1] = "Vishnu"

ArrayOfPeopleInTeam[0...2] = ["Vishnu","Nidhi","Vibhav","Vishal","Amit","Manasi","Prasad","Poonam"]

ArrayOfPeopleInTeam.remove(at: 7)

for person in ArrayOfPeopleInTeam
{
    print("\n \(person)")
    
}

for(index, value) in ArrayOfPeopleInTeam.enumerated()
{
    print("Person at \(index)  is \(value)")
}


print("Topic : Sets")

var setOfDeveloper :Set = ["Vishnu","Nidhi","Rajesh","Amit","Poonam","Prasad","Pooja"]
var setOfQA :Set = ["Vijesh","Manasi","Bishal","Pramod","PrasadB"]
var setOfManager :Set = ["Vibhav","Vishal"]
var setOfleads :Set<String> = Set<String>()

setOfleads.insert("Vishnu")
setOfleads.insert("Nidhi")
setOfleads.insert("Amit")
setOfleads.insert("Shobit")
setOfleads.insert("Vishnu") // this not inserted as duplicate is not allowed



for lead in setOfleads.sorted()
{
    print("\(lead)")
}

setOfDeveloper.remove("Pooja")

setOfDeveloper.contains("Pooja")

var setOfLeadsAndDeveloper:Set = setOfDeveloper.intersection(setOfleads)

var team :Set = setOfDeveloper.union(setOfleads).union(setOfQA).union(setOfManager)


var isDisjoint = setOfQA.isDisjoint(with: setOfDeveloper)



print("Topic : Dictionary")


var dictionaryInit : Dictionary<String,String> = Dictionary<String,String>()
dictionaryInit["Poonam"] = "Bhadikar"
dictionaryInit = [:]
//for (key,value) in dictionaryInit
//{

print(" Surname  of  Poonam is \(dictionaryInit["Poonam"])")
//}


var localizedString = ["nameLabel":"Enter User Name"]
localizedString["passWordLabel"] = "Password"
localizedString["yesLabel"] = "Yes"


print("Localized string key value pair are")
if (!localizedString.isEmpty)
{
    for (localizedLabel,value) in localizedString
    {
        print("\n \(localizedLabel) : \(value)")
    }
}


localizedString["yesLabel"] = "YES"

localizedString.updateValue("yes", forKey:"yesLabel" ) //it returns old value

print(" After updating, value for yesLabel is  \((localizedString["yesLabel"])!)")

//Removing 2 ways
localizedString.removeValue(forKey: "yesLabel") //way 1

localizedString["passWordLabel"] = nil //way 2


print("Localized string key value pair after removing")
if (!localizedString.isEmpty)
{
    for (localizedLabel,value) in localizedString
    {
        print("\n \(localizedLabel) : \(value)")
    }
}



//Accessing keys
for key in localizedString.keys
{
    
    print("\(key)")
    
}


//Accessing vaules
for value in localizedString.values
{
    
    print("\(value)")
    
}

//********************************************************************************

print("Topic : Control flow")
print("Topic : for loop")
//using _ with for
var sum = 1
var power = 3 ,base = 2
for _ in 1...power
{
    sum = sum * base
    
}

//using strid(from:to:by:) with for

print("Even numbers from 0 to 20(excluding 20)")

for even in stride(from: 2, to: 20, by : 2)
{
    print("\(even)")
}

// using strid(from:through:by:) with for
print("Even numbers from 0 to 20(including 20)")

for even in stride(from: 2, through: 20, by : 2)
{
    print("\(even)")
}


print("Topic : While")

var isAlive:Bool! = true
var age = 5

while(isAlive)
{
    print("Try new things")
    age += 10
    if(age>80)
    {
        isAlive = false
    }
}

print("Since some issue in try, you are caught by GOD")

//Repeat while = do while


repeat
{
    print("Try new things")
    
}
    while (isAlive)


//Switch

var color1 = "Blue"
switch color1 {
case "Green" :
    print(" color is Green") //Should have atlease one executable stmt
case "Blue" :
    print(" color is Blue")
case "Red" :
    print(" color is Red")
default :
    print("This is default value")
    
}

//Comppound case
var alaphabet = "A"
switch alaphabet{
case "a","A" :
    print(" it's albhabet : A") //Should have atlease one executable stmt
case "b" :
    print(" it's albhabet : B")
case "c" :
    print(" it's albhabet : C")
default :
    print("it is one of alphabet apart from a ,b ,c")
    
}

//Switch with range
var score = 80

switch score {
case 40..<60 :
    print("second class")
case 60..<70 :
    print("first class")
case 70...100 :
    print("Dictinction")
default :
    print("Fail")
}

//Tuples  + wild card pattern

var somePoint = (1,0)
//var somePoint = (0,0) //this would match all cases but , first one is considered


switch somePoint {
case (0,0):
    print("Point is  origin")
    
case (0,_):
    print("Point is on y axis")
    
case (_,0):
    print("Point is on x axis")
    
default :
    print("Point is somewhere else")
    
}

//Switch with value binding

var someNewPoint = (1,1)


switch someNewPoint {
case (0,0):
    print("Point is  origin")
    
case (0,let y):
    print("Point is on y axis with  y = \(y)")
    
case (let x,0):
    print("Point is on x axis with x = \(x)")
    
case (let x,let y):
    print("Point is on x =\(x) y = \(y))")   // default  is not always needed
    
}


//Switch with where

var someOtherPoint = (1,1)


switch someOtherPoint {
case (0,0):
    print("Point is  origin")
    
case (0,let y):
    print("Point is on y axis with  y = \(y)")
    
case (let x,0):
    print("Point is on x axis with x = \(x)")
    
case (let x,let y) where (x==y):
    
    print("Point having both x and y are equal")
    
case (let x,let y):
    print("Point is on x =\(x) y = \(y))")
    
}







//********************************************************************************
print("Topic : Control Transfer statements")



//********************************************************************************
print("Topic : Early Exit")

func getStudentDetail(students:[String:String])
{
    guard let studentName =  students["name"] else
    {
        return
    }
    print("student with name  \(studentName) is present")
    
    guard let studentSurname = students["name"] else
    {
        return
    }
    print("student with surname  \(studentSurname) is present")
    
}
getStudentDetail(students:["name":"Pooonam"] )
getStudentDetail(students:["surname":"Bhadikar"])

//********************************************************************************
print("Topic : Functions")

//func,input parameters,return arrow, return parameters
func addition (firstNumber:Int,secondNumber:Int)->(Int)
{
    return firstNumber + secondNumber
    
}
addition(firstNumber:10,secondNumber:20)

//Function returning multiple values
func math (first:Int,second:Int) -> (addition:Int,
    subtraction:Int,
    multiplecation:
    Int,division:Int)
{
    let sum = first + second
    let sub = first - second
    let mul = first * second
    let div = first / second
    
    return(sum,sub,mul,div)
    
    
}

var calculate = math(first:10,second:5)
print("\(calculate.addition)")
print("\(calculate.subtraction)")
print("\(calculate.multiplecation)")
print("\(calculate.division)")

//Function Argument Labels and Parameter Names

func addNumbers(firstNumber : Int ,addTo secondNum:Int)
{
    print("\(firstNumber + secondNum)")
}


addNumbers(firstNumber: 10, addTo: 20)

//Default parameters
func demoDefaultPara(parameter1:Int ,parameter2: Int = 20)
{
    print("Sum is \(parameter1 + parameter2)")
}


demoDefaultPara(parameter1: 20,parameter2: 30)
demoDefaultPara(parameter1: 10)


//Variadic parameters
func demoVariadicPara(_ numbers : Int...)
{    var sum = 0
    for num in numbers
    {
        sum = sum + num
    }
    
    print("Sum of numbers passed using variadic para is \(sum)")
    
}
demoVariadicPara(10,20,30)

//In - Out parameters

func demoInOutPara(num1 : inout Int,num2 :inout Int)
{
    var temp = num1
    num1 = num2
    num2 = temp
    print("after swapping num1 = \(num1) and num2 = \(num2)")
    
}
var firstNumToswap = 10
var secondNumToSwap =  20
demoInOutPara(num1: &firstNumToswap, num2: &secondNumToSwap)

//function type

var mathOperation:(Int,Int)->(Int)   //var of type func type specified

func add(a :Int,b :Int)->(Int)
{
    return a + b
}
func mul(a :Int,b :Int)->(Int)
{
    
    return a * b
}
mathOperation = add
var operationResult = mathOperation(10,20)

mathOperation = mul
operationResult = mathOperation(20,10)

//Function type as parameter
func demoFunTypeAsPara(_ mathFunction:(Int,Int)->Int,a:Int,b:Int)
{
    print("Result is \(mathFunction(a,b))")
}

demoFunTypeAsPara(mul,a:20,b:30)
demoFunTypeAsPara(add, a: 1, b: 2)

//Function †ype as return argument
func demoFunAsReturenType(operationType : String) ->((Int,Int)->(Int))
{
    switch operationType
    {
    case "ADD":
        return add
    case "MUL":
        return mul
    default:
        return add
        
    }
    
}
var MathFunc = demoFunAsReturenType(operationType: "MUL")
var multipleacation = MathFunc(23,34)

//Nested func , func inside func is possible
func nestedFunc (){
    func someFunct(a:Int)
    {
        print("\(a)")
    }
    someFunct(a: 10)
}
nestedFunc()
//********************************************************************************
print("Topic : Closure Expression")
//sort function takes closure as parameter that takes two string and returns bool
var arrayOfNames = ["Poonam","Qsts","Archana","Bhairavi"]

//Send method as closure

//func sortFunc(_ s1: String, _ s2: String) -> Bool {
//    return s2 > s1
//}

//arrayOfNames.sorted(by: sortFunc) // we are actually creating a function that matches with closure that is a input to sorted function. and passing that func as parameter to sorted


//Closure Expression


//insted of creating a new function we can directly pass the closure to sorted
//Closure expression syntax : {(parameter)-> returnType in //actual staments to be executed}
//arrayOfNames.sort(by: {(a: String,b: String) -> Bool in
//    return a > b
//    })


//Inferring Type From Context : infers type of parameter hence parameter type can be omitted

/*
 arrayOfNames.sort(by: {s1,s2 in return s2 > s1})
for i in arrayOfNames{
    print("i is \(i)")
}
 */

//“Implicit Returns from Single-Expression Closures : explicitly infers that function is going to return something , so we can omit return k/w also.

//arrayOfNames.sort(by: {s1,s2 in s2 > s1})

//for i in arrayOfNames{
//    print("i is \(i)")
//}

//Shorthand Argument Names

arrayOfNames.sort(by: {$0 < $1})

for i in arrayOfNames{
    print("i is \(i)")
}

//Operator Methods
//reversedNames = names.sorted(by: >)

//********************************************************************************
print("Topic : Enum")

enum DaysInWeek
{
    case sunday
    case monday
    case tuesday
    case wednesdday
    case thursday
    case friday
    case satday
}

//enum with switch

var day = DaysInWeek.sunday
switch day {
case .sunday:
    print("Sunday")
default:
    print("Day is not sunday")
}

//Associated values

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 3469, 5126, 543)

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}

//enum with raw values

enum NumberEnum:Int
{
    case one = 1
    case two = 2
    
}
var one = NumberEnum.one.rawValue
var possiblNumber = NumberEnum(rawValue : 2)


//********************************************************************************

print("Topic : Class")

class Birds
{
    var FeatherColor:String
    var Name:String
    
    init()    // kind of constructor with no parameters  // no automatic initializer
    {
        FeatherColor="White"
        Name="Robin"
    }
    init(_ Name:String,_ color:String)//parameterized constructor
    {
        FeatherColor=color
        self.Name=Name
    }
    
    func getBirdInfo()
    {
        print("Name of bird is \(Name)")
        
        print("Colour of bird  \(FeatherColor)")
        
        
    }
    
}
var bird1=Birds()
bird1.Name="Sparrow"
bird1.FeatherColor="Brown"
bird1.getBirdInfo()

var bird2=Birds("Peacock","Blue")
bird2.getBirdInfo()
var bird3 = Birds()
bird3.getBirdInfo()

//passed by reference
var bird4 = bird3
bird4.Name = "Bird4"

bird3.getBirdInfo()
bird3.getBirdInfo()


if bird3 === bird4  //Identity operator
{
    print("bird 3 and 4 are refering to same instance")
}
//********************************************************************************
print("Topic : Structures")

struct  studentInfo
{
    var name:String = "StudentName"
    var rollNumber:Int = 10
    
    func getData()
    {
        print(" student info in using struct\(name ) :: \(rollNumber)")
    }
    
}
var structObj = studentInfo(name:"Student2",rollNumber: 30) //automatically generated memberwise initializer

structObj.getData()

var strctNewObj = structObj
strctNewObj.name = "Poonam"
strctNewObj.getData()
structObj.getData()

//********************************************************************************

print("Topic properties")
//Strored properties

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
// the range represents integer values 0, 1, and 2
rangeOfThreeItems.firstValue = 6
// the range now represents integer values 6, 7, and 8”

// Lazy stored properties


class DataImporter {
    /*
     DataImporter is a class to import data from an external file.
     The class is assumed to take a nontrivial amount of time to initialize.
     */
    var filename = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
    // the DataManager class would provide data management functionality here
}

let dataManager = DataManager()
dataManager.data.append("Some data")
dataManager.data.append("Some more data")
// the DataImporter instance for the importer property has not yet been created”


dataManager.importer.filename //the DataImporter instance for the importer property has now  created”

//Computed properties

struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0),size: Size(width: 10.0,height: 10.0))

square.center = Point(x: 15.0, y: 15.0)

print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// Prints "square.origin is now at (10.0, 10.0)


//Read only computed properties

struct Numbers
{
    var first = 0
    var second = 0
    
    var sum :Int
    {
        return first + second
    }
    
}

var numberStruct = Numbers(first: 10, second: 30)
var addition = numberStruct.sum
//numberStruct.sum = 20 // Not possibles

//Type properties
struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}

var typeProperty = SomeStructure.storedTypeProperty //no instance created
var typePropertyComputed = SomeStructure.storedTypeProperty

//********************************************************************************

//Inheritance in swift
class Shape
{
    var Name:String
    final var pi = 3.14
    
    init( _ name:String)
    {
        self.Name=name
    }
    
    func nameOfShape()
    {
        print(Name)
    }
    func Area()   // final doesnot allow to override
    {
    }
}

//: is used as extend
class circle:Shape
{
    var Length:Int=3
    
    init(length:Int,name:String)
    {
        super.init(name)
        Length=length
    }
    override func Area()
    {
        print("Area of \(Name) is \(Length*Length)")
        
    }
    //
    
}

var c1=circle(length: 3, name: "circle")
c1.Area()
//********************************************************************************

print("Topic Extension")


extension Int
{
    var toString:String
    {                                               //computed property
        return String(describing:self)
        
    }
    
    func convertToString()->(String)
    {
        return String(describing:self)
    }
    
    mutating func square() {
        self = self * self
    }
    
}

var someIntNumber = 30
var numberInString:String = someIntNumber.toString
var numberTiStringUsingFunc = someIntNumber.convertToString()
var squareOfNumber = someIntNumber.square()





//********************************************************************************


print("Explicitly sepcifying type of variable")
let pi:Double=3.14

//********************************************************************************



//********************************************************************************

print("Explicit type conversion is necessory")
print(swiftIntro+String(pi))
print(myName)

//********************************************************************************

print("Including values in string")

let a=10
let b=20
print("first number \(a)")
print("second number \(b)")
print("Sum of two numbers is \(a+b)")
//********************************************************************************

// using 3 double quotes

//********************************************************************************

print("Creating array and dictionaries using []")

var ArrayOfPeopleInRoche=["vishal","vishnu","vibhav","rajesh","poonam","prasad","nidhi","shobit"]
let manager=ArrayOfPeopleInRoche[2]
print("Manager is \(manager)")

print("working with dictionary")


var nameSurname=["Poonam":"Bhadikar",
                 "A":"B"]

print("with optinal")
print(nameSurname["Poonam"])

print("without optional")
print(nameSurname["Poonam"]!)


print("Empty array and dictionary declaration")

var Sensors=[String]()
Sensors.append("SensorA")
print("Sensor name   \(Sensors[0]) \n")


var StringNamevalue=[String:Int]()
StringNamevalue["Xval"]=10;
StringNamevalue["Yval"]=20;

for(name,value) in StringNamevalue
{
    print("\(name) : \(value) \n")
}

//********************************************************************************

print("Understanding control flows \n")

print("Understanding if ")

var value=21
if value%2==0
{
    print("even value \n")
}
else
{
    print("odd value \n")
}
//********************************************************************************

print("For loop")
var number=[Int]()
number.append(13)
number.append(24)
number.append(23)
for val in number
{
    print("\(val) \n")
}
//********************************************************************************

print("if let (You can use if and let together to work with values that might be missing(null or nil in swift)) \n if let is type of null check if marks has no value i.e if it's value is nil if condition is false and code inside if is not executed")


var marks:Int?=20
if let grade=marks
{
    print("marks \(grade)")
}

print("Using  the ?? operator to set default values to variable if variable is nil")

var MyName:String?=nil

var defaultName:String="Poonam"

print(" Name is \(MyName ?? defaultName) ")

//********************************************************************************

//Using switch, also understanding use of let (to assign a value that matched pattern to constant
//NO explicit break is required


//var colour="Red dark"// matches pattern and enters second block
var colour="Red"
switch colour{
    
case "Red":print("Red")
    
case let val where val.hasSuffix("dark"):print("it is \(val)")
    
default:print("this is default block")
    
}

//********************************************************************************


//While loop

var somevalue=10
while(somevalue<66)
{
    somevalue=somevalue+10
}
print(somevalue)

//********************************************************************************



//Repeat while loop,same as do while

var k=10;
repeat{
    print("In repeat block")
    k=k+10
}
    while k<50

//********************************************************************************

//Itearating till perticulr value

for i in 0..<4 {
    print("i :\(i)"+"\n")
}

//********************************************************************************

//Declaring and caliing func
//parameters:first,second... return type int
//while calling give value if parameers to be passed in front of its name



func addNumbers(first:Int,second:Int)->Int
{
    return first+second
    
}
print("Additin is \(addNumbers(first: 3, second: 2))")


//if you dont want to provide parameter label in function call use _ in front of label while declaring func
func addNumbers(_ first:Int,_ second:Int)->Int
{
    return first+second
    
}
print("Additin is \(addNumbers(3,2))")


//********************************************************************************


//Tuples:used to return multiple values from function

func calulateResult(writtenExam:[Int],viva:[Int])->(writtenSum:Int,viva:Int)
{
    var writtenSum=0
    var vivaSum=0
    
    for score in writtenExam{
        writtenSum=writtenSum+score
    }
    
    for score in viva{
        vivaSum=vivaSum+score
    }
    
    var sum=writtenSum+vivaSum
    
    return(writtenSum,vivaSum)
}
var arrayExam=[30,30,30]
var arrayViva=[15,15,25]
calulateResult(writtenExam:arrayExam, viva:arrayViva)

//********************************************************************************


//Functions are a first-class type. This means that a function can return another function as its value.we can call function from function

//Usually first-class type means instances of T can be
//
//returned from functions
//passed into functions
//constructed at runtime


//This means that a function can return another function as its value.we can call function from function
//NICE!


func Increment()->((Int)->Int)
{
    func addOne(val:Int)->(Int)
    {
        return val+1;
    }
    return addOne
}

var incrementedVal=Increment()
incrementedVal(3)

//Function taking another function as argument

func CheckAllEven(listOfnumber:[Int],checkEven:(Int)->Bool)->Bool
{
    for number in listOfnumber
    {
        checkEven(number)
    }
    
    return false
}

func checkIsEven(number:Int)->Bool
{
    var isEven=false
    if(number%2==0)
    {
        isEven = true
        print("even")
    }
    return isEven
}
var list=[2,3,6]
CheckAllEven(listOfnumber:list, checkEven:checkIsEven)

//********************************************************************************


//using closure also understanding map


//Use map to loop over a collection and apply the same operation to each element in the collection.
//Map has single argument which is a closure
//closure has single argument and returns single argument
//in keyword seperates closures body with its argument


//When a closure is the only argument to a function, you can omit the parentheses entirely.

var numbers = [2,3,7,5]

numbers.map(
    {
        (val:Int)->Int in
        return val*val
    }
)


//using maps with dictionary,note:array is returened as output

var nature=["sky":"sky blue","water":"blue","sun":"orange"]
nature.map{
    element,color in element+" is "+color
    
}

//sorting using map ensures that if first element ($0) is greater than second one($1) then order first onebefore second one
let sortedNumber=numbers.sorted{$0>$1}
for val in sortedNumber{
    print(val)
}


//********************************************************************************


//Objects and classes

//Declaring class: use class k/w followed by class name


//Every property needs a value assigned—either in its declaration or in the initializers

//self is used instead of this
//class Birds
//{
//    var FeatherColor:String
//    var Name:String
//
//    init()    // kind of constructor with no parameters
//    {
//        FeatherColor="White"
//        Name="Robin"
//    }
//    init(_ Name:String,_ color:String)//parameterized constructor
//    {
//        FeatherColor=color
//        self.Name=Name
//    }
//
//    func getBirdInfo()
//    {
//        print("Name of bird is \(Name)")
//
//        print("Colour of bird  \(FeatherColor)")
//
//
//    }
//
//}
//var bird1=Birds()
//bird1.Name="Sparrow"
//bird1.FeatherColor="Brown"
//bird1.getBirdInfo()
//
//var bird2=Birds("Peacock","Blue")
//bird2.getBirdInfo()

//deinit is used for deinitialization simillar to destructor

//********************************************************************************

////Inheritance in swift
//class Shape
//{
//    var Name:String
//    final var pi = 3.14
//
//    init( _ name:String)
//    {
//        self.Name=name
//    }
//
//    func nameOfShape()
//    {
//        print(Name)
//    }
//    func Area()   // final doesnot allow to override
//    {
//    }
//}
//
////: is used as extend
//class circle:Shape
//{
//   var Length:Int=3
//
//    init(length:Int,name:String)
//    {
//        super.init(name)
//        Length=length
//    }
//    override func Area()
//    {
//        print("Area of \(Name) is \(Length*Length)")
//
//    }
//    //
//
//}
//
//var c1=circle(length: 3, name: "circle")
//c1.Area()
//final var


//Setter getter
//will set and did set remaining

//********************************************************************************

//Working with optional values:manages nil values ,? can be used with methods ,properties and subscripting
//********************************************************************************

//Working with enumerations and structures

enum suit:Int
{
    case spade=1,heart=2,queen=3
    //case one ,two ,three
    func suitType()->String
    {
        switch self
        {
        case .spade:return "Spade"
        case .heart:return ("Heart")
        case.queen:return ("Queen")
        default:return ("Hi")
        }
    }
    
}

var spade=suit.spade
var spadeRawValue=spade.rawValue
spade.suitType() //very imp make use of member of enum it self to call func of enum


//Use the init?(rawValue:) initializer to make an instance of an enumeration from a raw value. It returns either the enumeration case matching the raw value or nil if there is no matching Rank.

//ex of initializing enum using raw value
if let suitWithRawval = suit(rawValue: 3) {
    let threeDescription = suitWithRawval.suitType()
}


//You can associate case with values ex,

//Note: In below example we are using case's variable itself as case in switch case instead of self




enum Sensor
{
    case pairingSuccesful(name:String,macId:String)
    //can also use    case pairingSuccesful(String,String)
    
    case paringFail(response:String)
    
}

var succesful=Sensor.pairingSuccesful(name: "BleComm ", macId: "00-14-22-01-23-45")
var failed=Sensor.paringFail(response: "Transmitter not responding....")

switch succesful
{
case let .pairingSuccesful(deviceName,macAddress): // note let
    print("App connected to \(deviceName)")
default:print("unlikely error")
}
//As we written succesful infornt of switch we are actully passing var of type  pairingSuccesful which is a case in Sensor enum


//********************************************************************************


//Using Structures
//Note:Structures are simiilar to classes as it also has initializers and method,
//difference between structures nad classes: stuctures are always copied when used in code but classes are passed by reference

//Note: Every element in struct is considerd as unique to make chnages in it inside a function we are required to mark it as "mutating" function

//example
//struct  studentInfo
//{
//    var Name:String
//    var rollNumber:Int
//
//    init()
//    {
//        Name="vvd"
//        rollNumber=2
//    }
//    mutating func setData(_ name:String,_ id:Int)
//    {
//        Name=name
//        rollNumber=id
//
//    }
//    func getData()
//    {
//        print(" student info in using struct\(Name ) :: \(rollNumber)")
//    }
//
//}
//var structobj=studentInfo()
//structobj.setData("Poonam",1)
//structobj.getData()


//********************************************************************************

//Learning protocol and extension

//1.Protocols:it is kind of blueprint (//only declaration may be in terms of programing) for methods properties and other functionalities)i.e only the skelton of methods and properties instead of its actal implementation.

//then class, stucture, enumration can provide implementation for those methods or properties, when requirements of protocol are satisfied it is said to be conformance of protocol

//Declaring protocol using k/w protocol

//Property in protocol must have explicit { get } or { get set } specifier

protocol ShapeProtocol
{
    var nameOfShape:String{get}
    var length:Int{get}
    mutating func area()
    
    //mutating required to make it mutating if struct's method is changing properties or elements of struct ,properties of class can be chaged by its method hence, it will not affect class
}

//Adopting protocol(implementing interface)

//a.using class
class circleClass:ShapeProtocol
{
    var nameOfShape: String="circle as class"
    
    var length: Int=3
    
    func area()
    {
        nameOfShape+=" adopting protocol"
        print("Area \(nameOfShape) +\(length*length)")
        
    }
    
}
var c:ShapeProtocol=circleClass()
c.area()

//b. Adopting using struct

struct circleStruct:ShapeProtocol
{
    var nameOfShape: String="Circle as stuct"
    var length: Int=4
    
    mutating func area() {
        nameOfShape+=" adopting protocol"
        print("Area \(nameOfShape) +\(length*length)")
    }
    
}
var c2:ShapeProtocol=circleStruct()
c2.area()

// c. Adopting using enumeration

//Note:Struct: Value type, can have stored properties

//Enum: Value type, can not have stored properties

//Class: Reference type, have stored properties

enum circleEnum:ShapeProtocol
{
    case circleEnum1
    var nameOfShape: String{return "In enum"}
    var length: Int{return 5}
    
    mutating func area()
    {
        print("Area \(nameOfShape) +\(length*length)")
    }
    
}
var c3=circleEnum.circleEnum1
c3.nameOfShape;
c3.area()

//********************************************************************************

//Understanding extension :Adding new functinalities to class, structure, enum, protocol ....niceeeee

protocol ClassString
{
    
    func printString()->()
    
}

extension String:ClassString
{
    func printString()
    {
        print("Input string is  \(self)")
    }
    // we adding some fuctionality to String class without actually acessing it
}

var poonam:String="Poonam"
poonam.printString()

//********************************************************************************

//Understanding error handling

//You represent errors using any type that adopts the Error protocol.

enum ErrorType:Error
{
    case insufficientBalance
    case serverError
}
class Transaction
{
    var balance:Int=500
    var serverStatus:Bool=true
    
    func withDrawMoney(withdrawalAmount:Int)
    {
        
        
    }
    
    func deposite(money:Int) throws -> String
    {
        do
        {
            try
            {
                
                if(money<self.balance)
                {
                    throw ErrorType.insufficientBalance
                }
                
                if(!self.serverStatus)
                {
                    throw ErrorType.serverError
                }
                
            }
            
        }
        catch
        {
            print(error)
        }
        return "Transaction succesful"
    }
    
    
    func updateServerStatus(serverSta:Bool)
    {
        serverStatus=serverSta
        
    }
    
}

var transaction:Transaction=Transaction()
transaction.withDrawMoney(withdrawalAmount: 600)

var hexString = NSMutableString()


let bytes: [UInt8] = [14,15]
var byteString=[String]()
for byte in bytes {
    
    hexString.appendFormat("%02x", UInt(byte))
    print("byte \(byte)")
    print ("\(hexString)")
    hexString
    
    byteString.append(hexString as String)
    hexString=""
    
}

for str in byteString
{
    print ("\(str)")
    
}

var first=0x13
var second=0x14

//var arrayOfBytes:[UInt8]=[0x12,0x13,0x14]
var u16=UInt16(UInt16(first)<<8)

let currentTimeNsDate=NSDate()



//var temp:Data=Data(arrayOfBytes)
//
//var pointer:[UInt16]=[0,0]
//
//var val:UnsafeMutablePointer=pointer

//temp.copyBytes(to:&pointer, from: Range<Data.Index>)



//let uInt16Value1 = (UInt8)byteString[0]
//
//let uInt16Value = UInt16(bytes[0]) << 8 | UInt16(bytes[1])


//let u16 = UnsafePointer(bytes).withMemoryRebound(to: UInt16.self, capacity: 1) {
//    $0.pointee





//var byte=[0xff,0xff]

//var child1 = child()
//child1.Print()

