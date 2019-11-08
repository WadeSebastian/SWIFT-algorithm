//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Wade, Sebastian (WING) on 08/11/2019.
//  Copyright © 2019 Wade, Sebastian (WING). All rights reserved.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int] {
        var items = data
        for _ in 0..<items.count {
            for j in 0..<items.count - 1 {
                if items[j] > items[j+1] {
                    let temp = items[j+1]
                    items[j+1] = items[j]
                    items[j] = temp
                }
            }
        }
        
        return items
    }
    
    func merge(left: [Int], right: [Int]) -> [Int] {
        var sortedList = [Int]()
        var lPointer: Int = 0
        var rPointer: Int = 0
        while (lPointer != left.count) && (rPointer != right.count) {
            while left[lPointer] <= right[rPointer] {
                sortedList.append(left[lPointer])
                lPointer = lPointer + 1
            }
            while right[rPointer] < left[lPointer] {
                sortedList.append(right[rPointer])
                rPointer = rPointer + 1
            }
        } 
        if left.count == 0 {
            sortedList.append(contentsOf: Array(right.dropFirst(rPointer)))
        } else {
            sortedList.append(contentsOf: Array(right.dropFirst(rPointer)))
        }
        return sortedList
    }
    
}
