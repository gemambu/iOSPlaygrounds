import Foundation

func dp(_ s: String){
    print("--> \(Thread.current.description)    \(s)")

}

let parallelKiller = DispatchQueue(label: "Dexter", attributes: DispatchQueue.Attributes.concurrent)

dp("1")

parallelKiller.async {
    for _ in 0...10 {
        dp("🙈")
    }
}

parallelKiller.async {
    for _ in 0...10 {
        dp("🤡")
    }
    
}

parallelKiller.async {
    for _ in 0...10 {
        dp("🥗")
    }
}
