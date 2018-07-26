print("Hello World")

var val = 20
let val2 = 30 //Define constant

let implicitInteger = 70
let implictiDouble = 70.0

let explictDouble : Double = 70
let explictFloat : Float = 70

let label = "The width is "

let width = 94

let widthLable = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit"

var shoppingList = ["catfish", "water", "tulips"]

shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm" : "Captain",
    "Kaylee" : "Mechanic",
]

occupations["Jayne"] = "Public Relations"

//to create an empty array or dictionary, use the intializer

let emptyArray = [String]()
let emptyDictionary = [String:Float] ()

shoppingList = []
occupations = [:]

let individualScores = [75, 43, 103, 87, 12]

var teamScore = 0


for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

var optionalString : String? = "Hello"
print(optionalString == nil)

var optionalName : String? = nil

var greeting = "Hello"

if let name = optionalName {
    greeting = "Hello, \(name)"
}

let nickName : String? = "Furkan"
let fullName : String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

print(informalGreeting)

let vegetable = "red pepper"

switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress" :
        print("That would make a good tea sandwich")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")    
}

let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci" : [1,1,2,3,5,8],
    "Square" : [1,4,9,16,25],
]

var largest = 0

for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            
        }
    }
}
print(largest)

var n = 2 
while n > 100 {
     n *= 2
    
}

print(n)

var m = 2
repeat {
    m *= 2
} while m < 100

print(m)

var total = 0

for i in 2..<4 {
    total += i
}

print(total)

func greet(person : String, day : String) -> String {
    return "Hello \(person), today is \(day)."
}

var result = greet(person:"Bob", day:"Tuesday")
print(result)

func greetNoLabel(_ person: String, onDay : String) -> String {
    return "Hello \(person), today is \(onDay)."
}

result = greetNoLabel("John", onDay: "Wednesday")
print(result)

//to return multiple values from a function

func calculateStatistics(scores:[Int]) -> (min:Int,
max:Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }

        sum += score
    }

    return (min, max, sum)
    
}

let statictics = calculateStatistics(scores :[5,3,100,3,9])

print(statictics.min)

//Function can be nested

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }

    add()

    return y
}

print(returnFifteen())

//Functions are a first-class type. This means that a function can return another function as its value

func makeIncrementer() ->((Int) -> Int) {
    func addOne(number : Int) -> Int{
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()

print(increment(7))

//A function can take another function as one of its arguments

func hasAnyMatcher(list :[Int], condition : (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]

print(hasAnyMatcher(list:numbers, condition: lessThanTen))

var mapResult = numbers.map({
    (number : Int) -> Int in 
    if number % 2 != 0 {
        return 0
    }

    return number
})

print(mapResult)

let mappedNumbers = numbers.map({ 
    number in 3 * number
})

print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1}

print(sortedNumbers)
