//
//  MovieList.swift
//  tableView
//
//  Created by Shivam
//

import Foundation

class MovieList{
    
    var movieList = [String]()

    init(autofil: Bool) {
        if autofil {
            // Default movies list
            movieList =
                [
                 "Eternals",
                 "Dune",
                 "No Time To Die",
                 "Last Night in Soho",
                 "Ron\'s Done Wrong",
                 "Halloween Kills",
                 "Venom",
                 "Antlers",
                 "The Addams Family 2"
                ]
        }
    }
    
    func addMovie(movie: Movies){
        // Adding the new movie to movielist
        movieList.append(movie.MovieName)
    }
}
