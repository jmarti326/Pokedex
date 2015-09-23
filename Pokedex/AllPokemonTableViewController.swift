//
//  AllPokemonTableViewController.swift
//  Pokedex
//
//  Created by Juan Martí on 9/20/15.
//  Copyright © 2015 Juan Martí. All rights reserved.
//

import UIKit

class AllPokemonTableViewController: UITableViewController {
    
    var pokemonImageList = ["http://pokeapi.co/media/img/1383571573.78.png/"];

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 //Remember to change this with the data obtain from the web service.
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let pokemonCellIdentifier = "pokemonCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(pokemonCellIdentifier, forIndexPath: indexPath) as! PokemonTableViewCell
        
        //Two If in one.  Verifies if it contains a string, and if the url has data.
        
        if let url  = NSURL(string: pokemonImageList[indexPath.row]), data = NSData(contentsOfURL: url)
        {
            cell.pokemonSprite.image = UIImage(data: data);
        }

        cell.pokemonNameLabel.text = "TestingName"
        cell.pokemonType1Label.text = "Type1"
        cell.pokemonType2Label.text =  "Type2"
        
        //To Make the Images Circular, I have modified the radius of the image in the cell.
        cell.pokemonSprite.layer.cornerRadius = cell.pokemonSprite.frame.size.width/2;
        cell.pokemonSprite.clipsToBounds = true;
        
        /*
        let testAbility = Ability();
        testAbility.name = "thingy";
        testAbility.resourceURI = "thingyThing";
        let testAbility2 = Ability();
        testAbility2.name = "thingy";
        testAbility2.resourceURI = "thingyThing";
        let test = Pokemon();
        test.abilities.append(testAbility);
        test.abilities.append(testAbility2);
*/
        return cell
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
