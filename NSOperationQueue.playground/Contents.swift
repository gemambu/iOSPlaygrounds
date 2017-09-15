import Foundation

func dp(_ s: String){
    print("--> \(Thread.current.description)    \(s)")
    
}

let queue = OperationQueue()

queue.addOperation {
    dp("1")
}
queue.addOperation {
    dp("2")
}
queue.addOperation {
    dp("3")
}

class MyOp: Operation {
    let url: String
    init(url: String){
        self.url = url
    }
    override func main() {
        dp("Inside Operation downloading \(self.url)")
        
//        self.performSelector(onMainThread: #selector(execetudeThisOnMain), with: nil, waitUntilDone: false)
        
        executeWithOpQueue()
        
    }
    
//    @objc func execetudeThisOnMain() {
//        dp("Back to main")
//    }
    
    func executeWithOpQueue() {
        OperationQueue.main.addOperation {
            dp("Back to main")
        }
    }
}

extension Operation{
    func addDependenciesSoCool(op: Operation) -> Operation {
        self.addDependency(op)
        return self
    }
}

let myOp1 = MyOp(url: "url 1")
let myOp2 = MyOp(url: "url 2")
let myOp3 = MyOp(url: "url 3 ^^")


// En este caso, la op2 será lo último que se haga sí o sí o sí

//myOp2.addDependency(myOp3)
//myOp2.addDependency(myOp1)


myOp2.addDependenciesSoCool(op: myOp1).addDependenciesSoCool(op: myOp3)


queue.addOperations([myOp1, myOp2, myOp3], waitUntilFinished: false)




