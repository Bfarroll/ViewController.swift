//
//  Person.swift
//  workshop1
//
//  Created by Billy Farroll on 08/10/2015.
//  Copyright © 2015 Billy Farroll. All rights reserved.
//

import Foundation

protocol PersonDelegate {

    func someoneHadBirthday (Person: Person)
    

}

class Person {

    var name: String
    var age: Int
    var delegate : PersonDelegate?
    
    
    init(name: String, age: Int) {
        
        
        self.name = name
        self.age = age
    
    }
    
    func haveBirthday () {
    delegate?.someoneHadBirthday(self)
        
    age = age + 1
        
    }
    

}
