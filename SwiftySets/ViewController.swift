//
//  ViewController.swift
//  SwiftySets
//
//  Created by Saqib Omer on 28/11/2016.
//  Copyright © 2016 Fixed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Properties
    
    let sets = SwiftySets()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
            // Create a set of signed Int values set
            if let anIntSet = sets.createSignedIntSet(startLimit: 5, endLimit: 20, increement: 5) {
                print(anIntSet.sorted())
            }
        
           // Create a set of signed Float values set
            if let aFloatSet = sets.createSignedFloatSet(startLimit: 5.0, endLimit: 20.0, increement : 2.0) {
                print(aFloatSet.sorted())
            }
    
            // Create a set of signed Float values set
            if let aAlphabetSet = sets.createAlphaBetsSet(startCharacter: "a", endCharacter: "z", increement: 1) {
                print(aAlphabetSet.sorted())
            }
        
            // Get Union of two Int Sets
            let aSet = sets.createSignedIntSet(startLimit: 1, endLimit: 10, increement: 2)
            let bSet = sets.createSignedIntSet(startLimit: 11, endLimit: 20, increement: 2)
        
            if let intUnion = sets.getUnionofIntSets(firstSet: aSet!, secondSet: bSet!) {
                print(intUnion.sorted())
            }
        
            // Get Union of two Int Sets
            let floatOneSet = sets.createSignedFloatSet(startLimit: 2.0, endLimit: 8.0, increement: 1)
            let floatTwoSet = sets.createSignedFloatSet(startLimit: 9.0, endLimit: 18.0, increement: 1)
        
            if let floatUnion = sets.getUnionofFloatSets(firstSet: floatOneSet!, secondSet: floatTwoSet!) {
                print(floatUnion.sorted())
            }
    
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

