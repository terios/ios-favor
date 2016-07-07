//
//  SubjectService.swift
//  favor
//
//  Created by terios on 7/6/16.
//  Copyright © 2016 terios. All rights reserved.
//

import Foundation
import RealmSwift

public class SubjectService {
 
    let realm = try! Realm()
    
    func save(data: SubjectsModel) -> Int {
        
        try! realm.write {
            realm.add(data)
        }
        return 0
    }
    
    func all() -> Results<SubjectsModel> {
        return realm.objects(SubjectsModel.self)
    }
    
    func findPredicat(predicate :String) -> Results<SubjectsModel> {
        return realm.objects(SubjectsModel.self).filter(predicate)
    }
    
    
}