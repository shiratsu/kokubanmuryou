//
//  ViewController.h
//  kokuban20131005
//
//  Created by HIRATSUKA SHUNSUKE on 2013/10/05.
//  Copyright (c) 2013年 HIRATSUKA SHUNSUKE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DrawingView.h"
#import "GADBannerView.h"

@interface ViewController : UIViewController
<
UIImagePickerControllerDelegate,
UITextFieldDelegate,
UIActionSheetDelegate>
{
    UIActionSheet *aActionSheet;
	IBOutlet UIImageView *aImageView;
	IBOutlet UIButton *showBtn;
    IBOutlet UIButton *menu;
	IBOutlet UIButton *elaser;
	IBOutlet UIButton *chook1;
	IBOutlet UIButton *chook2;
	IBOutlet UIButton *chook3;
	IBOutlet UIButton *chook4;
    IBOutlet UIButton *chook5;
	IBOutlet UIButton *crower;
	IBOutlet UIButton *crower_on;
	IBOutlet DrawingView *curDrawingView;
    IBOutlet DrawingView *pastDrawingView;
	int mode;
	int select_chook;
    int default_view_count;
	UIInterfaceOrientation orien;
	//-- バナービュー追加！ --//
    UIActivityIndicatorView *activityIndicator;
    GADBannerView *bannerView_;
    //    IBOutlet AdlantisView *adView;
    
    NSMutableArray *aryStroke;
	NSMutableArray *aStroke;
	CGFloat penWhite,penRed,penYellow,penBlue,penBlack,penGreen,penAlpha;//現在の色
    CGImageRef		lastImage;
    UIImagePickerControllerSourceType   sourceType;
    UIImage *pickImage;
    int deviceHeight;
    int deviceWidth;
    int linedepth;
    
    BOOL kokubanMode;
    BOOL yukiMode;
    BOOL billingMode;
}
@property(weak,nonatomic) IBOutlet UIImageView *aImageView;
@property(weak,nonatomic) IBOutlet UIButton *showBtn;
@property(weak,nonatomic) IBOutlet UIButton *menu;
@property(weak,nonatomic) IBOutlet UIButton *elaser;
@property(weak,nonatomic) IBOutlet UIButton *chook1;
@property(weak,nonatomic) IBOutlet UIButton *chook2;
@property(weak,nonatomic) IBOutlet UIButton *chook3;
@property(weak,nonatomic) IBOutlet UIButton *chook4;
@property(weak,nonatomic) IBOutlet UIButton *chook5;
@property(weak,nonatomic) IBOutlet DrawingView *curDrawingView;
@property(weak,nonatomic) IBOutlet DrawingView *pastDrawingView;
@property(nonatomic) BOOL kokubanMode;
@property(nonatomic) BOOL yukiMode;
@property(nonatomic) BOOL billingMode;
@property(nonatomic) int linedepth;
@property(nonatomic) CGFloat penWhite,penRed,penYellow,penBlue,penBlack,penGreen,penAlpha;

-(BOOL)writeImage:(UIImage*)inImage toFile:(NSString*)fileName;
-(void)setPenColor:(NSInteger)idx;
-(void)elase;
-(void) elase;
-(void) Allstand : (int) stand;
-(void) chook1 :(id) sender ;
-(void) chook2 :(id) sender ;
-(void) chook3 :(id) sender ;
-(void) chook4 :(id) sender ;
-(void) chook5 :(id) sender ;
-(UIImage *) takeGrabScreenImage;

@end
