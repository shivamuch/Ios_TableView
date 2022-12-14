//
//  MovieListTableViewController.swift
//  tableView
//
//  Created by Shivam
//

import Foundation
import UIKit

class MovieListTableViewController: UITableViewController {
    
    let movieList = MovieList(autofil: true)
    var movieText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Adds the title
        title = "Movies"
        
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.movieList.count
        // returns the count of movies
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        cell.textLabel?.text = movieList.movieList[indexPath.row]
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
        // reloads the table view
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Deleting row
            movieList.movieList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Inserting new row to movies list
            movieList.movieList.insert(movieText, at: 0)
        }
    }
    
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to toIndexPath: IndexPath) {
        let item = movieList.movieList[fromIndexPath.row]
        movieList.movieList.remove(at: fromIndexPath.row)
        movieList.movieList.insert(item, at: fromIndexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Retriving data
        let destination = segue.destination as! AddMovieVC
        destination.movieList = movieList
    }
}
