//
//  Introduction4VC.m
//  Breasties
//
//  Created by Eko Prasetio Rahmat on 3/27/16.
//  Copyright © 2016 LOVEPINKINDONESIA. All rights reserved.
//

#import "Introduction4VC.h"
#import "Constant.h"

@interface Introduction4VC ()

-(void)UpdateFontInTextView;

@end

@implementation Introduction4VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //set background color
    self.view.backgroundColor = BACKGROUND_COLOR;
    
    //set text color
    self.lblTitle.textColor = TEXT_COLOR;
    self.lblDescription.textColor = TEXT_COLOR;
    
    //set text localizeable
    self.lblTitle.text = NSLocalizedString(@"Introduction4Title", nil);
    self.lblDescription.text = NSLocalizedString(@"Introduction4Description", nil);
    
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
