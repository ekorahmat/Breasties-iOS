//
//  Introduction1VC.m
//  Breasties
//
//  Created by Eko Prasetio Rahmat on 3/26/16.
//  Copyright © 2016 LOVEPINKINDONESIA. All rights reserved.
//

#import "Introduction1VC.h"
#import "Constant.h"

@interface Introduction1VC ()

-(void)UpdateFontInTextView;

@end

@implementation Introduction1VC


-(void)viewDidLoad
{
    //set background color
    self.view.backgroundColor = BACKGROUND_COLOR;
    
    //set text color
    self.lblTitle.textColor = TEXT_COLOR;
    self.lblDescription.textColor = TEXT_COLOR;
    
    //set text localizeable
    self.lblTitle.text = NSLocalizedString(@"Introduction1Title", nil);
    self.lblDescription.text = NSLocalizedString(@"Introduction1Description", nil);
    
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [self UpdateFontInTextView];
}

-(void)UpdateFontInTextView
{
    while (self.lblDescription.contentSize.height > self.lblDescription.frame.size.height)
    {
        self.lblDescription.font = [self.lblDescription.font fontWithSize:self.lblDescription.font.pointSize -1];
    }
}

@end
