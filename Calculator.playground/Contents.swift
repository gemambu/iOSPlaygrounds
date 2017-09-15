import Foundation

enum Operations {
    case Add
    case Substract
    case Multiply
    case Divide
}

func calculatorOldSchool(opCode: Operations, n1: Int, n2: Int) -> Int {
    switch opCode {
    case .Add:
        return n1 + n2
    case .Substract:
        return n1 - n2
    case .Multiply:
        return n1 * n2
    case .Divide:
        return n1 / n2

    }
}

calculatorOldSchool(opCode: .Add, n1: 5, n2: 7)

typealias IntegerOperation = (Int, Int) -> Int


let add: IntegerOperation = { (n1: Int, n2: Int) -> Int in
    return n1 + n2
}

add(10, 2)


let substract: IntegerOperation = { (n1: Int, n2: Int) -> Int in
    return n1 - n2
}

substract(10, 5)


func calculatorCool(operation: IntegerOperation, n1: Int, n2: Int) -> Int  {
    return operation(n1, n2)
}

calculatorCool(operation: add, n1: 10, n2: 40)
calculatorCool(operation: substract, n1: 10, n2: 2)

let newOp = { (n1: Int, n2: Int) -> Int in
    return n1 * 2 + n2 * 2
}
calculatorCool(operation: newOp, n1: 2, n2: 5)

calculatorCool(operation:   { (n1: Int, n2: Int) -> Int in
                                return n1 * 4 - n2 * 4
                            }
                            , n1: 2, n2: 5)



