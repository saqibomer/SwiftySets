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
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

