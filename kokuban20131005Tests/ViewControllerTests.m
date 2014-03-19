//
//  ViewControllerTests.m
//  kokuban20131005
//
//  Created by HIRATSUKA SHUNSUKE on 2014/03/20.
//  Copyright (c) 2014年 HIRATSUKA SHUNSUKE. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface ViewControllerTests : XCTestCase

@property (nonatomic, strong) ViewController *vc;

@end

@implementation ViewControllerTests

- (void)setUp
{
    [super setUp];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    self.vc = [storyboard instantiateViewControllerWithIdentifier:@"kokuban_iphone"];
    [self.vc performSelectorOnMainThread:@selector(loadView) withObject:nil waitUntilDone:YES];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

- (void)testViewController1
{
}

@end
