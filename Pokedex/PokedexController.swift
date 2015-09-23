//
//  PokedexController.swift
//  Pokedex
//
//  Created by Juan Martí on 9/21/15.
//  Copyright © 2015 Juan Martí. All rights reserved.
//

import Foundation

public class PokedexController:APIRequest
{
    public func getPokedex() -> Pokedex
    {
        let pokedexObj = pokedexRequest()

        return pokedexObj
    }
    
    public func getPokemon(id:Int) -> Pokemon
    {
        let pokemonObj = Pokemon()//Temporary Obj
        
        return pokemonObj
    }
    
    public func getType(id:Int) -> Type
    {
        let typeObj = Type()//Temporary Obj
        
        return typeObj
    }
    
    public func getMove(id:Int) -> Move
    {
        let moveObj = Move()
        
        return moveObj
    }
    
    public func getAbility(id:Int) -> Ability
    {
        let abilityObj = Ability()
        
        return abilityObj
    }
    
    public func getEggGroup(id:Int) -> EggGroup
    {
        let eggGroupObj = EggGroup()
        
        return eggGroupObj
    }
    
    public func getDescription(id:Int) -> Description
    {
        let descriptionObj = Description()
        
        return descriptionObj
    }
    
    public func getSprite(id:Int) -> Sprite
    {
        let spriteObj = Sprite()
        
        return spriteObj
    }
    
    public func getGame(id:Int) -> Game
    {
        let gameObj = Game()
        
        return gameObj
    }
    
    
}