//
//  ItemStore.swift
//  Homepwner
//
//  Created by Matthew Watzman on 6/13/17.
//  Copyright © 2017 Matthew Watzman. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    @discardableResult func createItem() -> Item
    {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    func removeItem(_ item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
}
