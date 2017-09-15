import UIKit

// map, reduce, filter

let basket = ["🍏", "🍐", "🍋", "🍑", "🍓", "🍋"]

// filter == SELECT SQL

//v1
basket.filter( { (s: String) -> Bool in
    return s == "🍋"
})

// lee cada uno de los elementos de basket y los compara con el objeto con el que igualas

// v2
basket.filter { (s: String) -> Bool in
    return s == "🍋"
}

// v3
//$0 en las funciones es el ELEMENTO que toca analizar
basket.filter { $0 == "🍋" }
basket.filter { $0 != "🍋" }


// map == UPDATE SQL
// map: pela -> pela todas las frutas
// map: trocear 


basket.map { (e: String) -> String in
    return e + "🔪"
}

basket.map { (e: String) -> Int in
    return e.lengthOfBytes(using: String.Encoding.utf8)
}

let urls = [
    "https://i.pinimg.com/736x/94/c8/a8/94c8a8b7c8c5120b60dcb5ea96d96ab9--internet-memes-the-internet.jpg",
    "http://1.bp.blogspot.com/_cNRzNGo5KyY/TG1jjbQ0cFI/AAAAAAAAAYM/yvlPQRhCVG0/s1600/YesWeJarl.jpg"
]

let imgs = urls.map {
    URL(string: $0)!
}.map {
    do{
       return try Data(contentsOf: $0)
    } catch {}
    return Data()
}.map {
    UIImage(data: $0)
}

imgs

// reduce == funciones agregadas de sql (AVG, SUM, MAX...)
// sólo devuelve una cosa

// obtengo el tamaño total de todos los elementos del array
basket.reduce(0) { // empieza en 0 para que no tenga offset
    $0 + $1.lengthOfBytes(using: String.Encoding.utf8)
}

let marx = ["123", "1234", "hh"]
marx.reduce(0) { // empieza en 0 para que no tenga offset, pero podemos poner offset, incluso negativos
    $0 + $1.lengthOfBytes(using: String.Encoding.utf8)
}

let number = [45, 65, 18, 72, 87]
number.reduce(0) {
    $0 + $1
}




