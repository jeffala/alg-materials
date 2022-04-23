// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.


example(of: "using a stack") {
    var stack = Stack<Int>()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)
    
    print(stack)
    
    if let poppedElement =  stack.pop() {
        assert(4 == poppedElement)
        print("Popped: \(poppedElement)")
    }
}
