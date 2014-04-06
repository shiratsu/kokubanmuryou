//
//  ViewControllerTests.m
//  kokuban20131005
//
//  Created by HIRATSUKA SHUNSUKE on 2014/03/20.
//  Copyright (c) 2014年 HIRATSUKA SHUNSUKE. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OCMock.h"
#import "ViewController.h"
#import "DrawingView.h"

@interface ViewControllerTests : XCTestCase

@end

@implementation ViewControllerTests{
    ViewController *vc;
    id mockelaser;
    id mockchook1;
    id mockchook2;
    id mockchook3;
    id mockchook4;
    id mockchook5;
    id mockmenu;
    id mockcurdraiwingview;
    id mockpastdraiwingview;
    id mockViewCotnroller;
    id mockactionsheet;
    id mockview;

}

- (void)setUp
{
    [super setUp];
//    
    //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    //vc = [storyboard instantiateViewControllerWithIdentifier:@"kokuban_iphone"];
    vc = [[ViewController alloc] init];
    
    //とりあえず、モックを作りまくる
    mockelaser = [OCMockObject mockForClass:[UIButton class]];
    mockchook1 = [OCMockObject mockForClass:[UIButton class]];
    mockchook2 = [OCMockObject mockForClass:[UIButton class]];
    mockchook3 = [OCMockObject mockForClass:[UIButton class]];
    mockchook4 = [OCMockObject mockForClass:[UIButton class]];
    mockchook5 = [OCMockObject mockForClass:[UIButton class]];
    mockmenu    = [OCMockObject mockForClass:[UIButton class]];
    mockcurdraiwingview    = [OCMockObject mockForClass:[DrawingView class]];
    mockpastdraiwingview    = [OCMockObject mockForClass:[DrawingView class]];
    mockViewCotnroller = [OCMockObject mockForClass:[ViewController class]];
    mockactionsheet = [OCMockObject mockForClass:[UIActionSheet class]];
    mockview = [OCMockObject mockForClass:[UIView class]];
    
    
    vc.chook1 = mockchook1;
    vc.chook2 = mockchook2;
    vc.chook3 = mockchook3;
    vc.chook4 = mockchook4;
    vc.chook5 = mockchook5;
    vc.menu = mockmenu;
    vc.curDrawingView = mockcurdraiwingview;
    vc.pastDrawingView = mockpastdraiwingview;
    
    //vc.view = mockview;
    //[self.vc performSelectorOnMainThread:@selector(loadView) withObject:nil waitUntilDone:YES];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    vc = nil;
    [super tearDown];
}

- (void)testExample
{
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
    XCTAssertTrue(TRUE);
}

- (void)testViewController1
{
    XCTAssertTrue(TRUE);
    NSLog(@"%@",vc);
    id mock = [OCMockObject niceMockForClass:UIImage.class];
    BOOL boolWriteFile = [vc writeImage:mock toFile:@"test"];
    NSLog(@"writeval:%d",boolWriteFile);
    
    XCTAssertTrue(boolWriteFile);
}

- (void)testViewWillAppear
{
    [vc viewWillAppear:YES];
    NSLog(@"vc.kokubanMode:%d",vc.kokubanMode);
    XCTAssertTrue(vc.kokubanMode);
}

- (void)testTakeGrabScreenImage
{
    UIImage *obj = [vc takeGrabScreenImage];
    BOOL imgFlag = false;
    if(obj){
        imgFlag = TRUE;
    };
    
    XCTAssertTrue(vc.kokubanMode);
    
}

- (void)testChook1
{
    id mockVC = [OCMockObject partialMockForObject:vc];
    [[mockVC expect] Allstand:1];
    [[mockVC expect] setPenColor:0];
    [vc chook1:vc.chook1];
    [mockVC verify];
}

- (void)testAnother
{
    [vc chook1:vc.chook1];
    XCTAssertTrue(vc.kokubanMode);
}

-(void)testElaseSheet
{
    //UIWindow* window = [[[UIApplication sharedApplication] delegate] window];
    
    [[mockactionsheet expect] showInView:[[[[UIApplication sharedApplication] keyWindow] subviews] lastObject]];

    
    
    vc.aActionSheet = mockactionsheet;
    [vc showEraseSheet:mockelaser];
    [mockactionsheet verify];
    
}


@end
