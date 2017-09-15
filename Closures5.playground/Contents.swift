import Foundation

func downloadImage(imageName: String) -> Data {
    // background
    
    // al acabar...
    return Data()
}

let chiquitoData = downloadImage(imageName: "http://")
print("jarl")


func downloadImage2(imageName: String, completion: () -> ()) {
    
}

downloadImage2(imageName: "chiquito", completion: {
    print("se acabo")
})

// trailing closure
downloadImage2(imageName: "chiquito") {
    print("se acabo tambien")
}