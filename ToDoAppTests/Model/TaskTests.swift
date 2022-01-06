//
//  TaskTests.swift
//  ToDoAppTests
//
//  Created by Roman Holovai on 21.11.2021.
//

import XCTest
@testable import ToDoApp

class TaskTests: XCTestCase {

    func testInitTaskWithTitle() {
        let task = Task(title: "Foo") // Foo bar baz
        
        XCTAssertNotNil(task)
    }
    
    func testInitTaskWithTitleAndDescription() {
        let task = Task(title: "Foo", description: "Bar") // Foo bar baz
        
        XCTAssertNotNil(task)
    }
    
    func testWhenGivenTitleSetsTitle() {
        let task = Task(title: "Foo")
        
        XCTAssertEqual(task.title, "Foo")
    }
    
    func testWhenGivenDescriptionSetsDescription() {
        let task = Task(title: "Foo", description: "Bar")
        
        XCTAssertEqual(task.description, "Bar")
    }
    
    func testTaskInitsWithData() {
        let task = Task(title: "Foo")
        XCTAssertNotNil(task.date)
    }
    
    func testWhenGivenLocationSetsLocation() {
        let location = Location(name: "Foo")
        
        let task = Task(title: "Bar", description: "Baz", location: location)
        XCTAssertEqual(location, task.location)
    }
    
}
