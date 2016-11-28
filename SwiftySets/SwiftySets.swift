//
//  SwiftySets.swift
//  SwiftySets
//
//  Created by Saqib Omer on 28/11/2016.
//  Copyright © 2016 Fixed. All rights reserved.
//

import Foundation


class SwiftySets {
    
    
    /*
     * Used to create a set with range
     */
    
//    var setStartLimit : Int!
//    var setEndLimit : Int!
    
    
    /*
     * A set which contains value of type Int
     */
    var intSet = Set<Int>()
    
    /*
     * A set which contains value of type Int
     */
    var floatSet = Set<Float>()
    
    /*
     * A set which contains value of type String
     */
    var stringSet = Set<String>()
    
    /*
     * A set which contains value of type Characters
     */
    var charSet = Set<Character>()
    
    
    /*
     * Create a set of type Int 
     * This is a signed set. Set range can only be positive
     */
    
    func createSignedIntSet(startLimit : Int , endLimit : Int, increement : Int) -> Set<Int>? {
        
        if startLimit >= 0 && startLimit < endLimit {
            
            for value in stride(from: startLimit, through: endLimit, by: increement){
                
                intSet.insert(value)
                
            }
            
         return intSet
            
        }
        return nil
        
    }
    
    /*
     * Create a set of type Int
     * This is a signed set. Set range can only be positive
     */
    
    func createSignedFloatSet(startLimit : Float , endLimit : Float, increement : Float) -> Set<Float>? {
        
        if startLimit >= 0 && startLimit < endLimit {
            
            for value in stride(from: startLimit, through: endLimit, by: increement){
                
                floatSet.insert(value)
                
            }
            
            return floatSet
            
        }
        return nil
        
    }
    
    
    
    
}
