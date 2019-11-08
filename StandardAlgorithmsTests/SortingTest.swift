//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Wade, Sebastian (WING) on 08/11/2019.
//  Copyright © 2019 Wade, Sebastian (WING). All rights reserved.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedIntegers() {
        //arrange
        let sorting = Sorting()
        let data = [5, 4, 1, 3]
        //act
        let actual = sorting.bubbleSort(data: data)
        //assert
        XCTAssertEqual(actual, [1, 3, 4, 5])
    }
    
    func testBubbleSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [10, 3, 2, 7, 1], expected: [1, 2, 3, 7, 10]),
                         (input: [456, 300, 3, 1, 5, 4], expected: [1, 3, 4, 5, 300, 456])]
        //act
        //assert
        for testCase in testCases {
            //testCase is a tuple representing the input test data and our expected output
            let actual = sorting.bubbleSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testBubbleSortPerformanceOnRandomArrayOf100Integers() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        
        for _ in 1...1000 {
            data.append(Int.random(in: 1...100))
        }
        
        //act
        measure {
            sorting.bubbleSort(data: data)
        }
    }
    
    func testMergeWithTwoSortedArraysReturnsOneSortedArray() {
        //arrange
        let left = [1,3,5]
        let right = [2,4,10]
        let sorting = Sorting()
        //act
        let actual = sorting.merge(left: left, right: right)
        //assert
        XCTAssertEqual(actual, [1,2,3,4,5,10])
    }

}
