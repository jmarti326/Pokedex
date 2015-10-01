//
//  APIWrapper.swift
//  Pokedex
//
//  Created by Juan Martí on 9/22/15.
//  Copyright © 2015 Juan Martí. All rights reserved.
//

import Foundation

public class APIWrapper
{
    public func pokedexWrapper(data:NSArray) -> [Pokedex]
    {
        var pokedexList = [Pokedex]()
        
        for(var i = 0; i<data.count; i++)
        {
            let pokedexObj = Pokedex()
            pokedexObj.name = "testing" + String(i)
            print(data[0]["name"])
            pokedexList.append(pokedexObj)
        }
        return pokedexList
    }
    
    public func pokemonWrapper(data:NSString) -> Pokemon
    {
        let obj = Pokemon()
        return obj
    }
    
    public func typeWrapper(data:NSString) -> Type
    {
        let obj = Type()
        return obj
    }
    
    public func moveWrapper(data:NSString) -> Move
    {
        let obj = Move()
        return obj
    }
    
    public func abilityWrapper(data:NSString) -> Ability
    {
        let obj = Ability()
        return obj
    }
    
    public func eggGroupWrapper(data:NSString) -> EggGroup
    {
        let obj = EggGroup()
        return obj
    }
    
    public func descriptionWrapper(data:NSString) -> Description
    {
        let obj = Description()
        return obj
    }
    
    public func spriteWrapper(data:NSString) -> Sprite
    {
        let obj = Sprite()
        return obj
    }
    
    public func gameWrapper(data:NSString) -> Game
    {
        let obj = Game()
        return obj
    }
}