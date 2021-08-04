//
//  Movie.swift
//  TableList
//
//  Created by linda.zande on 03/08/2021.
//

import Foundation

struct MovieList {
    
    let movieTitle: String
    let year: String
    let poster: String
    
    static func createMovie() ->[MovieList]{
        var movies: [MovieList] = []
        
        let movieTitle = DataManager.shared.movieTitle
        let year = DataManager.shared.year
        let poster = DataManager.shared.poster
        
        
        for index in 0..<movieTitle.count {
            let movie = MovieList(movieTitle: movieTitle[index], year: year[index], poster: poster[index])
            movies.append(movie)
            
        }
        return movies
    }
}
//"12 Angry Men (1957)"
//"Pulp Fiction (1994)"
//"Schindler's List (1993)"
//"The Shawshank Redemption (1994)"
//"The Good, the Bad and the Ugly (1966)"
//"The Dark Knight (2008)"
//"The Godfather (1972)"
//"The Godfather: Part II (1974)"
//"The Lord of the Rings: The Fellowship of the Ring (2001)"
//"The Lord of the Rings: The Return of the King (2003)"
//
//]
