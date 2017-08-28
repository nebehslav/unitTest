//
//  AplicationUITests.m
//  AplicationUITests
//
//  Created by Iliya Iliev on 8/26/17.
//  Copyright © 2017 Iliya Iliev. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface AplicationUITests : XCTestCase

@end

@implementation AplicationUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testExample {

    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"Second"] tap];
    [app.buttons[@"First"] tap];
    
    XCUIElement *button = app.buttons[@"Button"];
    [button tap];
    [button swipeRight];
    
    [app.switches[@"1"] tap];
    
    XCUIElement *textField = [[app.otherElements containingType:XCUIElementTypeButton identifier:@"Button"] childrenMatchingType:XCUIElementTypeTextField].element;
    [textField tap];
    [textField typeText:@"ala bala"];

    
    [[[[[app.otherElements containingType:XCUIElementTypeButton identifier:@"Button"] childrenMatchingType:XCUIElementTypeSlider] matchingIdentifier:@"50%"] elementBoundByIndex:0] swipeRight];
    [app.sliders[@"79%"] swipeLeft];
    [app.sliders[@"50%"] swipeRight];
    [app.sliders[@"77%"] swipeLeft];
    
}

@end
