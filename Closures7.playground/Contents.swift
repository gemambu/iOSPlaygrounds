import Foundation

let number = [45, 65, 18, 72, 87]
number.reduce(0) {
    $0 + $1
}

number.reduce(0, +)

func pepe(n1: Int, n2: Int) -> Int {
    return n1 * n2
}

number.reduce(1, pepe)

let marx = ["123", "1234", "hh"]
marx.reduce("", +)
