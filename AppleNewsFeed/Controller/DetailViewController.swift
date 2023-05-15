//
//  DetailViewController.swift
//  AppleNewsFeed
//
//  Created by irena.omelana on 13/05/2023.
//

import UIKit
import CoreData
import SDWebImage

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var newsImageView: UIImageView!
    
    //#warning("rets item passed")
    var authorString: String = String()
    var titleString: String = String()
    var webString: String = String()
    var imageString: String = String()
    var descString: String = String()
    
    @IBOutlet weak var descTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = autorString
        titleLable.text = titleString
        newsImageView.sd_setImage(with: URL(string: imageString))
        descTextView.text = descString
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
