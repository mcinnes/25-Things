//
//  FirstViewController.m
//  BizAppTutorial
//
//  Created by Tope on 02/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

@implementation FirstViewController

@synthesize logoLabel, descriptionLabel, callUsButton, directionsButton, copyrightLabel;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
    self.logoLabel = [[FXLabel alloc] initWithFrame:CGRectMake(14, 11, 280, 87)];

    [logoLabel setFont:[UIFont boldSystemFontOfSize:45]];

    [logoLabel setTextColor:[UIColor whiteColor]];
    [logoLabel setShadowColor:[UIColor blackColor]];
    [logoLabel setShadowOffset:CGSizeMake(0, 2)];
    [logoLabel setTextAlignment:UITextAlignmentCenter];
    [logoLabel setBackgroundColor:[UIColor clearColor]];
    [logoLabel setText:@"25 things"];

    [logoLabel setGradientStartColor:[UIColor colorWithRed:163.0/255 green:5.0/255 blue:222.0/255 alpha:1.0]];
    [logoLabel setGradientEndColor:[UIColor colorWithRed:163.0/255 green:5.0/255 blue:128.0/255 alpha:1.0]];


    [self.view addSubview:logoLabel];

    self.descriptionLabel = [self createLabelWithFrame:CGRectMake(42, 91, 238, 55) andFontSize:19 andText:@"A selection of free activities to do in Victoria"];
    [descriptionLabel setNumberOfLines:2];
    
    self.copyrightLabel = [self createLabelWithFrame:CGRectMake(22, 379, 269, 23) andFontSize:11 andText:@"Copyright 2012 Matt McInnes"];
       
    [self.view addSubview:logoLabel];
    [self.view addSubview:descriptionLabel];
    [self.view addSubview:copyrightLabel];
    
    
    self.callUsButton = [self createButtonWithFrame:CGRectMake(22, 320, 276, 52) andLabel:@"Suggestions? Email me!"];
    
    
    
    [self.view addSubview:callUsButton];
    
    UIColor *backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    [self.view setBackgroundColor:backgroundColor];
    
    [self.callUsButton addTarget:self action:@selector(callNumber) forControlEvents:UIControlEventTouchUpInside];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}


-(void)callNumber
{
    UIApplication *app = [UIApplication sharedApplication];  
    [app openURL:[NSURL URLWithString:[NSString stringWithFormat:@"mailto:mcinnes@me.com?subject=Suggestions for 25 Things"]]];
    
}




 
-(UILabel*)createLabelWithFrame:(CGRect)frame andFontSize:(float)fontSize andText:(NSString*)text
{
    UILabel* label = [[UILabel alloc] initWithFrame:frame];
           
    [label setFont:[UIFont systemFontOfSize:fontSize]];
    
    [label setTextColor:[UIColor whiteColor]];
    [label setShadowColor:[UIColor blackColor]];
    [label setShadowOffset:CGSizeMake(0, -1)];
    [label setTextAlignment:UITextAlignmentCenter];
    [label setBackgroundColor:[UIColor clearColor]];
    [label setText:text];
    
    return label;
}


-(FXLabel*)createFXLabelWithFrame:(CGRect)frame andFontSize:(float)fontSize andText:(NSString*)text useBoldFont:(BOOL)useBold
{
    FXLabel* label = [[FXLabel alloc] initWithFrame:frame];
    
    if(useBold)
    {
        [label setFont:[UIFont boldSystemFontOfSize:fontSize]];
    }
    else
    {
        [label setFont:[UIFont systemFontOfSize:fontSize]];
    }
    
    [label setTextColor:[UIColor whiteColor]];
    [label setShadowColor:[UIColor blackColor]];
    [label setShadowOffset:CGSizeMake(0, -1)];
    [label setTextAlignment:UITextAlignmentCenter];
    [label setBackgroundColor:[UIColor clearColor]];
    [label setText:text];
    
    return label;
}

-(UIButton*)createButtonWithFrame:(CGRect)frame andLabel:(NSString*)label
{
    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    
        
    UIColor* buttonColor = [UIColor colorWithRed:95.0/255 green:113.0/255 blue:126.0/255 alpha:1.0];
    
    [button setTitle:label forState:UIControlStateNormal];
    [button setTitleColor:buttonColor forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:@"button.png"] forState:UIControlStateNormal];

    [button.titleLabel setFont:[UIFont boldSystemFontOfSize:18]];
    
    return button;
}



- (NSString*)getAdvisoryCondition {
	
	NSError *error;
	NSURLResponse *response;
	NSData *dataReply;
	NSString *stringReply;
	
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL: [NSURL URLWithString: @"http://127.0.0.1:8000/version.xml"]];
	[request setHTTPMethod: @"GET"];
	dataReply = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
	stringReply = [[NSString alloc] initWithData:dataReply encoding:NSUTF8StringEncoding];
	
	[_update.text isEqualToString:stringReply];
	return stringReply;
}



- (void)viewDidUnload
{
    [self setUpdate:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
    
    // Use this to allow upside down as well
    //return (interfaceOrientation == UIInterfaceOrientationPortrait || interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown);
}

@end
