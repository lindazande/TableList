//
//  DetailMovieViewController.swift
//  TableList
//
//  Created by linda.zande on 03/08/2021.
//

import UIKit

class DetailMovieViewController: UIViewController {

    @IBOutlet weak var movieTitleNameLabel: UILabel!
    @IBOutlet weak var movieTitleImageView: UIImageView!
    
    var movie: MovieList!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if movie != nil {
            movieTitleImageView.image = UIImage(named: movie.poster)
            movieTitleNameLabel.text = movie.movieTitle + " " + movie.year
            movieTitleNameLabel.numberOfLines = 0
        }
    }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


