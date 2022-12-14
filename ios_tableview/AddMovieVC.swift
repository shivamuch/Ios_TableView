//
//  AddMovieVC.swift
//  tableView
//
//  Created by Shivam
//

import Foundation

import UIKit

class AddMovieVC: UIViewController {
    
    var movieList: MovieList!
    // initializing variable
    
    @IBOutlet weak var movieText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Adds title
        title = "Add New Movies"
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        // function to get text
        if !movieText.text!.isEmpty {
            let movieName = movieText.text!
            // Creating new movies
            let movie = Movies(MovieName: movieName)
            // Adding movie 
            movieList.addMovie(movie: movie)
        }
    }
}
