//
//  GridViewCell.m
//  BizAppTutorial
//
//  Created by Tope on 03/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GridViewCell.h"

@implementation GridViewCell

@synthesize imageView, captionLabel ;

- (id) initWithFrame: (CGRect) frame reuseIdentifier: (NSString *) aReuseIdentifier
{
    self = [super initWithFrame: frame reuseIdentifier: aReuseIdentifier];
    if ( self)
    {
        
        UIView* mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 160, 123)];
        [mainView setBackgroundColor:[UIColor clearColor]];
        
        UIImageView *frameImageView = [[UIImageView alloc] initWithFrame:CGRectMake(9, 4, 142, 117)];
        [frameImageView setImage:[UIImage imageNamed:@"tab-mask.png"]];
        
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(13, 8, 135, 84)];
        
        self.captionLabel = [[UILabel alloc] initWithFrame:CGRectMake(13, 92, 127, 21)];
        [captionLabel setFont:[UIFont systemFontOfSize:14]];
        
        [mainView addSubview:imageView];
        [mainView addSubview:frameImageView];
        [mainView addSubview:captionLabel];
        
        [self.contentView addSubview:mainView];
        
    }
    
    return self;
}

/*
- (CALayer *) glowSelectionLayer
{
    return ( self.imageView.layer );
}
*/
@end
