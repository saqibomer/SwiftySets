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
     * A set which contains value of type Characters
     */
    var alphaBetsSet = Set<Character>()
    
    
    /*
     * Create a set of type Int 
     * @params 
     * startLimit -> Int
     * endLimit   -> Int
     * increement -> Int
     *
     * Retruns a set of int values
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
     * @params
     * startLimit -> Float
     * endLimit   -> Float
     * increement -> Float
     *
     * Retruns a set of float values
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
    
    /*
     * Create a set of type Alphabets
     * @params
     * startLimit -> Character
     * endLimit   -> Character
     * increement -> Character
     * Takes either both small letters of both capital letters
     * e.g startCharacter = "A" , endCharacter = "S"
     * or startCharacter = "D" , endCharacter = "S"
     *
     * Retruns a set of alphabets
     */
    
    func createAlphaBetsSet(startCharacter : Character , endCharacter : Character, increement : Int) -> Set<Character>? {
        

        
        let scalarStartCharacter = String(startCharacter).unicodeScalars
        let valStart             = scalarStartCharacter[scalarStartCharacter.startIndex].value
        
        let scalarEndCharacter   = String(endCharacter).unicodeScalars
        let valEnd             = scalarEndCharacter[scalarEndCharacter.startIndex].value
        
        
        if valStart >= 65 && valEnd <= 91 {
            
            for value in stride(from: valStart, through: valEnd, by: increement){
                
                alphaBetsSet.insert(Character(UnicodeScalar(value)!))
                
            }
            
            return alphaBetsSet
            
        }
        
        if valStart >= 97 && valEnd <= 122 {
            
            for value in stride(from: valStart, through: valEnd, by: increement){
                
                alphaBetsSet.insert(Character(UnicodeScalar(value)!))
                
            }
            
            return alphaBetsSet
            
        }
        
        
        return nil
        
    }
    
    
    /*
     * Get Union of two Int sets
     * @params
     * firstSet -> Set
     * secondSet   -> Set
     
     *
     * Retruns a set of union of two sets
     */
    
    func getUnionofIntSets(firstSet : Set<Int> , secondSet : Set<Int>)->Set<Int>? {
        return firstSet.union(secondSet)
    }
    
    /*
     * Get Union of two Float sets
     * @params
     * firstSet -> Set
     * secondSet   -> Set
     
     *
     * Retruns a set of union of two sets
     */
    
    func getUnionofFloatSets(firstSet : Set<Float> , secondSet : Set<Float>)->Set<Float>? {
        return firstSet.union(secondSet)
    }
    
    
    
    
}
