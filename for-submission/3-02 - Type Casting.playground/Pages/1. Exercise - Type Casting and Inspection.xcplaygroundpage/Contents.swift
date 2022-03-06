/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var collection : [Any] = [false, "Pink",23 , 24.55]

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for value in collection {
    if value is Int{
        print("The integer has a value of \(value)")
    }else if value is Double{
        print("The Double has a value of \(value)")
    }else if value is String{
        print("The Sring has a value of \(value)")
    }else if value is Bool{
        print("The Bool has a value of \(value)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dictionary: [String: Any] = ["Double": 23.55, "Integer":67, "String":"MyCollection","Bool": true]
for (key,value) in dictionary{
    print("\n\(key):\t\(value)")
}
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total :Double = 0
for (_,value) in dictionary{
    if let valueIstInt = value as? Int{
        total += Double(valueIstInt)
    }else  if let valueIstDouble = value as? Double{
        total += valueIstDouble
    }else if value is String{
        total += 1.00
    }else if value is Bool{
        if value as! Bool == true {
            total += 2
        }else if value as! Bool == false {
            total -= 3
        }
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2 : Double = 0
for (key,value) in dictionary{
    if let valueIstInt = value as? Int{
        total2 += Double(valueIstInt)
    }else  if let valueIstDouble = value as? Double{
        total2 += valueIstDouble
    }else if let valueIsString = value as? String{
        total2 += Double(valueIsString) ?? 0
    }
}
print(total2)

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
