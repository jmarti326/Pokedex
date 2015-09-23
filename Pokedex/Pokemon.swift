//
//  Pokemon.swift
//  Pokedex
//
//  Created by Juan Martí on 9/20/15.
//  Copyright © 2015 Juan Martí. All rights reserved.
//

import Foundation

public class Pokemon
{
    var name:String?
    var nationalId:Int?
    var resourceURI:String?
    var created:String? //I don't think is needed.
    var modified:String? //I don't think is needed.
    var abilities:String? //This needs to be a list
    var eggGroups:String? //This is a list
    var evolutions:String? //The list of evolution
    var descriptions:String?
    var moves:String?//List of moves
    var types:String? //List
    var catchRate:String?
    var species:String?
    var stats:Stats?
    var eggCycles:String?//Prob list
    var evYield:String? //Probably something else.
    var experience:String?//Probably an int.
    var growthRate:String?//Probably an int.
    var height:String?
    var weight:String?
    var happiness:String?
    var maleFemaleRation:String? //Thinking about spliting it with a class call gender.
}