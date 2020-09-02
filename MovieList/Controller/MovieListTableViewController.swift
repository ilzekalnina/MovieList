//
//  MovieListTableViewController.swift
//  MovieList
//
//  Created by Kisacka on 02/09/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {
    
//    var movieList = [
//        "12 YEARS A SLAVE - 2013",
//        "1917 - 2019",
//        "A STAR IS BORN - 2018",
//        "BEAUTY AND THE BEAST - 2017",
//        "BREAKFAST AT TIFFANY'S - 1961",
//        "NO TIME TO DIE - 2020",
//        "SOME LIKE IT HOT - 1959"
//    ]

    var movies = Movie.createMovie()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = true

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count // count of movies in the array
    }

    // if there are thousand movies, it shows just concrete rows depending on the size of  the screen, to see other, we need to scroll, and then it adjust un reuses cells to show the ones that we are scrolling on to.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieListCell", for: indexPath)
        //movieListCell is from TableViewController
        
//        cell.textLabel?.text = movieList[indexPath.row] // title
//        cell.detailTextLabel?.text = movieList[indexPath.row] //subtitle, in this case the same
//        cell.textLabel?.numberOfLines = 0 // if there are more than 1 line, so it shows all
//        cell.imageView?.image = UIImage(named: movieList[indexPath.row]) // index starts from 0

        
        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.nameOfTheMovie
        cell.detailTextLabel?.text = movie.year
        cell.imageView?.image = UIImage(named: movie.cover)
        
        // Configure the cell...

        return cell
    }
    
    //Mark: - Table view delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50   // size of the table view
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    
    // Override to support rearranging the table view.
//    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//
//    }
    
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
        
    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let indexPath = tableView.indexPathForSelectedRow {
            
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
            print(indexPath.row)
            let detailVC = segue.destination as! DetailViewController
            detailVC.movie = movies[indexPath.row]
        }

    }
    

}
