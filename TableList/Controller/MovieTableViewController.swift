//
//  MovieTableViewController.swift
//  TableList
//
//  Created by linda.zande on 02/08/2021.
//

import UIKit

class MovieTableViewController: UITableViewController {

    // The Shawshank Redemption (1994)
    //The Godfather (1972)
    //The Godfather: Part II (1974)
    // The Dark Knight (2008)
    //12 Angry Men (1957)
    // Schindler's List (1993)
    //The Lord of the Rings: The Return of the King (2003)
    //Pulp Fiction (1994)
    //The Good, the Bad and the Ugly (1966)
    //The Lord of the Rings: The Fellowship of the Ring (2001)
    //]
    var movies = MovieList.createMovie()
        
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
       //self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movies.count
        
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        //as? MovieTableViewCell else {return UITableViewCell() }
       // cell.movieLabel.text = "Jurassic Park I"
       // cell.movieImageView.image = UIImage(named: "jp.jpg")
        
       // return cell
     //   }
        
        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.movieTitle
        cell.detailTextLabel?.text = movie.year
        cell.imageView?.image = UIImage(named: movie.poster)


        return cell
    }

//MARK: -Table View delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // Return false if you do not want the specified item to be editable.
        return 250
    }


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

    
//Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

        let currentMovieTitle = movies.remove(at: fromIndexPath.row)
        movies.insert(currentMovieTitle, at: to.row)
    }
    


    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow  {
        // Get the new view controller using segue.destination.
            print(indexPath)
            let detailVC = segue.destination as!
            DetailMovieViewController
            detailVC.movie = movies[indexPath.row]
        // Pass the selected object to the new view controller.
    }
    }

}
