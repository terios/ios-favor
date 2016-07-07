//
//  GenericDBService.swift
//  favor
//
//  Created by terios on 7/6/16.
//  Copyright © 2016 terios. All rights reserved.
//

import Foundation
import RealmSwift

public class GenericDBService<T> {
    
    let realm = try! Realm()
    
    func all<T: Comparable>(data : T) -> Int {
        
//        try! realm.write {
//            realm.add(data)
//        }
        
        return 0
    }
    
    /*let testSubject = SubjectsModel()
     testSubject.title = "Travel"
     testSubject.background = "travel background"
     
     let realm = try! Realm()
     try! realm.write {
     realm.add(testSubject)
     }
     */
    
}