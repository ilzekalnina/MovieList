//
//  Movie.swift
//  MovieList
//
//  Created by Kisacka on 02/09/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import Foundation



struct Movie {
    
    let nameOfTheMovie: String
    let year: String
    let cover: String
    
    //static means that can't override this function
    static func createMovie() -> [Movie]{
        var movies: [Movie] = []
        
        let tracks = DataManager.shared.movie
        let years = DataManager.shared.year
        let covers = DataManager.shared.cover
        
        for index in 0..<tracks.count {
            let movie = Movie(nameOfTheMovie: tracks[index], year: years[index], cover: covers[index])
            movies.append(movie)
        }
        
        return movies
    }
    
}
