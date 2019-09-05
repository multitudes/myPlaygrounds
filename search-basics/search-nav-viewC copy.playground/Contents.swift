import PlaygroundSupport
import UIKit

class ViewController: UIViewController, UISearchResultsUpdating {
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        title = "Hello World"
        search.searchResultsUpdater = self
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Type something here to search"
        navigationItem.searchController = search
    }
    
    let search = UISearchController(searchResultsController: nil)
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        print(text)
    }

}

let vc = ViewController()
vc.title = "Hello World"

let nav = UINavigationController(rootViewController: vc)

PlaygroundPage.current.liveView = nav

