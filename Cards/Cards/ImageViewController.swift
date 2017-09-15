import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func loadImageButtonClicked(_ sender: Any) {
        assert(Thread.current == Thread.main)
        print (Thread.current.description)
        
        DispatchQueue.global().async {
            self.loadImage()
        }
        
    }
    
    func loadImage(){
        assert(Thread.current != Thread.main)
        print (Thread.current.description)
        
        let imageUrl = "http://www.fbtb.net/wp-content/uploads/2015/10/75103-Captain-Phasma-465x500.jpg"
        
        assert(imageUrl.lengthOfBytes(using: String.Encoding.utf8) > 0)
        
        if let url = URL(string: imageUrl),
            let data = NSData(contentsOf: url) {
            let image = UIImage(data: data as Data)
            
            DispatchQueue.main.async {
                self.imageView.image = image
            }
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
