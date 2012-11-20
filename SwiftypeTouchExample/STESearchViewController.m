//
//  STESearchViewController.m
//  SwiftypeTouchExample
//
//
//  Copyright (c) 2012 Swiftype. All rights reserved.
//

#import "STESearchViewController.h"
#import <SwiftypeTouch/STPageDocumentTypeResultsObject.h>

@interface STESearchViewController ()

@property (nonatomic, strong) STPageDocumentTypeResultsObject *resultObject;

@end

@implementation STESearchViewController


-(id)init
{
    return [super initWithNibName:nil bundle:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIImageView *swiftypeLogo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Swiftype.png"]];
    swiftypeLogo.center = CGPointMake(self.view.bounds.size.width/2.0f, self.view.bounds.size.height/2.0f);
    swiftypeLogo.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    [self.view addSubview:swiftypeLogo];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Settings" ofType:@"plist"];
    NSDictionary *settings = [[NSDictionary alloc] initWithContentsOfFile:path];
    NSString *engineKey = [settings valueForKey:@"engine_key"];
    
    if ([engineKey length] == 0) {
        [NSException raise:@"No engine key" format:@"Edit Settings.plist to set your engine key."];
    }
    
    self.resultObject = [[STPageDocumentTypeResultsObject alloc] initWithViewController:self clientEngineKey:engineKey];
    [self.view addSubview:self.resultObject.searchBar];
   
}

@end
