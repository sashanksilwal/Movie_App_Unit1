//
//  MovieDetailsViewController.swift
//  iflix
//
//  Created by Sashank Silwal on 9/29/21.
//

import UIKit
import Alamofire

class MovieDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var backDropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie : [String: Any]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        print(movie["title"])
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        
        let posterUrl = URL(string: baseUrl + posterPath)!
        posterView.af.setImage(withURL: posterUrl)
         let backDropPath = movie["backdrop_path"] as! String
        
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backDropPath)!
        backDropView.af.setImage(withURL: backdropUrl)
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
