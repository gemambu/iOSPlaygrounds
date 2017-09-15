import Foundation

let concatNameAndSurname = { (s1: String, s2: String) -> String in
    return s1 + s2
}

concatNameAndSurname("gema", "mb")

let cityAndStreet = concatNameAndSurname

cityAndStreet("Seville", "Sierpes")

typealias StringJointer = (String, String) -> String

let cityAndFutbolTeam: StringJointer = concatNameAndSurname

cityAndFutbolTeam("Sevilla", "Betis")