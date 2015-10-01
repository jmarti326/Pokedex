//
//  APIRequest.swift
//  Pokedex
//
//  Created by Juan Martí on 9/22/15.
//  Copyright © 2015 Juan Martí. All rights reserved.
//

import Foundation

public class APIRequest:APIWrapper
{
    var pokeAPI = PokeAPI()
    
    func pokedexRequest(completionBlock:NSArray -> ())
    {
        let url = pokeAPI.baseURL + pokeAPI.pokedex
        let request: NSURLRequest = NSURLRequest(URL: NSURL(string: url)!)
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session = NSURLSession(configuration: config)
        
        let task : NSURLSessionDataTask = session.dataTaskWithRequest(request, completionHandler: {(data, response, error) in
            if(error != nil)
            {
                print("Error retrieving data from the web service. Error:")
            }
            else
            {
                do
                {
                    let jsonData:NSDictionary = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as! NSDictionary//Dictionary<String, AnyObject>
                    completionBlock(jsonData["pokemon"] as! NSArray)
                    //print(jsonData)
                    //for(var i = 0; i<jsonData["pokemon"]?.count; i++)
                    //{
                        //let obj = jsonData["pokemon"]![i] as! NSDictionary
                        //print(obj["name"])
                    //}
                    
                }
                catch
                {
                    print("problem with the NSJsonSerialization")
                }
                //result = NSString(data: data!, encoding: NSUTF8StringEncoding)!
            }
        });
        task.resume()
    }
    
    public func pokemonRequest(data:NSString) -> Pokemon
    {
        let obj = Pokemon()
        return obj
    }
    
    public func typeRequest(data:NSString) -> Type
    {
        let obj = Type()
        return obj
    }
    
    public func moveRequest(data:NSString) -> Move
    {
        let obj = Move()
        return obj
    }
    
    public func abilityRequest(data:NSString) -> Ability
    {
        let obj = Ability()
        return obj
    }
    
    public func eggGroupRequest(data:NSString) -> EggGroup
    {
        let obj = EggGroup()
        return obj
    }
    
    public func descriptionRequest(data:NSString) -> Description
    {
        let obj = Description()
        return obj
    }
    
    public func spriteRequest(data:NSString) -> Sprite
    {
        let obj = Sprite()
        return obj
    }
    
    public func gameRequest(data:NSString) -> Game
    {
        let obj = Game()
        return obj
    }
}