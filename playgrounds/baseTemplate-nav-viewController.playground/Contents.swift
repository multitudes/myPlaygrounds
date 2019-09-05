import PlaygroundSupport
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        view.backgroundColor = .white
        title = "Hello World"
    }
    
}

let vc = ViewController()
vc.title = "Hello World"

let nav = UINavigationController(rootViewController: vc)

PlaygroundPage.current.liveView = nav


