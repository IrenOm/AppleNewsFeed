//
//  DetailViewController.swift
//  AppleNewsFeed
//
//  Created by irena.omelana on 13/05/2023.
//

import UIKit
import CoreData

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLable: UILabel!
    
    var titleString: String = String()
    var webString: String = String()
    
#warning("rets item reseved")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Author name"
        titleLable.text = titleString

        // Do any additional setup after loading the view.
    }
    
    func saveData(){
        #warning("save into core data")
    }
    
    
    @IBAction func savedButtonTapped(_ sender: Any) {
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination: WebViewController = segue.destination as! WebViewController
        destination.urlString = webString
    }
    

}
