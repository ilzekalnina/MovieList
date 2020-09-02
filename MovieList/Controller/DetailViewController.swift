//
//  DetailViewController.swift
//  MovieList
//
//  Created by Kisacka on 02/09/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    
    //var movieName: String!
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if movie != nil{
            movieImageView.image = UIImage(named: movie.cover)
            movieNameLabel.text = "\(movie.nameOfTheMovie) \n (\(movie.year))"
            movieNameLabel.numberOfLines = 0 // can be more than 1 line
        }
    }
    
    
    
    
}
