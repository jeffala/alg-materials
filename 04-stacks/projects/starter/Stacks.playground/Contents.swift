// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.


//example(of: "using a stack") {
//    var stack = Stack<Int>()
//    stack.push(1)
//    stack.push(2)
//    stack.push(3)
//    stack.push(4)
//
//    print(stack)
//
//    if let poppedElement =  stack.pop() {
//        assert(4 == poppedElement)
//        print("Popped: \(poppedElement)")
//    }
//}

//example(of: "Initializing a stack from an array") {
//    let array = ["A", "B", "C", "D"]
//    var stack = Stack(array)
//    print(stack)
//    stack.pop()
//}

//example(of: "Initializing a stack from an array literal") {
//    var stack: Stack = [1.0, 2.0, 3.0, 4.0]
//    print(stack)
//    stack.pop()
//}

// Create a function that uses a stack to print the contents of an array in reversed order.
//func printInReverse<T>(_ array: [T]) {
//    var stack = Stack<T>()
//
//    for value in array {
//        stack.push(value)
//    }
//
//    while let value = stack.pop() {
//        print(value)
//    }
//}


//Check for balanced parentheses. Given a string, check if there are ( and ) characters, and return true if the parentheses in the string are balanced. For example:
func checkParentheses(_ string: String) -> Bool {
    var stack = Stack<Character>()
    
    for character in string {
        if character == "(" {
            stack.push(character)
        } else if character == ")" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
        }
    }
    return stack.isEmpty
}

checkParentheses("h((e))llo(world)())")
checkParentheses("hello world")
