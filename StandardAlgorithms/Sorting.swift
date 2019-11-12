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
        var mergedArray = [Int]()
        var leftTemp = left
        var rightTemp = right

        while leftTemp.count > 0 && rightTemp.count > 0 {
            if leftTemp[0] < rightTemp[0] {
                mergedArray.append(leftTemp[0])
                leftTemp.remove(at: 0)
            } else {
                mergedArray.append(rightTemp[0])
                rightTemp.remove(at: 0)
            }
        }
        mergedArray.append(contentsOf: leftTemp)
        mergedArray.append(contentsOf: rightTemp)
        return mergedArray
    }
    
    func mergeSort(data: [Int]) -> [Int] {
        if data.count <= 1 {
            return data
        } else {
            let midpoint = data.count / 2
            let left = mergeSort(data: Array(data[0..<midpoint]))
            let right = mergeSort(data: Array(data[midpoint..<data.count]))
            return merge(left: left, right: right)
        }
    }
    
    func quickSort (data:[Int]) -> [Int] {
      if data.count <= 1 {
        return data
      } else {
        let pivot = data[0]
        var left: [Int] = [Int]()
        var right: [Int] = [Int]()
        for i in 1..<data.count {
          let item = data[i]
          if item < pivot {
            left.append(item)
          } else {
            right.append(item)
          }
        }
        var sortedList: [Int] = [Int]()
        sortedList.append(contentsOf: quickSort(data: left))
        sortedList.append(pivot)
        sortedList.append(contentsOf: quickSort(data: right))
        return sortedList
      }
    }
    
}
