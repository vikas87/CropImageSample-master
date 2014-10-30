//
//  page3.m
//  CropImageSample
//
//  Created by Vikas on 29/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import "page3.h"

@interface page3 ()

@end

@implementation page3
@synthesize earthImage;
@synthesize playButton;
@synthesize ani1,ani2,ani3;
@synthesize headerImage;

- (void)viewDidLoad {
    
    [ani1 setAlpha:0];
    [ani2 setAlpha:0];
    [ani3 setAlpha:0];
    
    ani1.frame=CGRectMake(552,173,0,176);
    [self playImage];
    
    [NSTimer scheduledTimerWithTimeInterval:1.1
                                   target:self
                                   selector:@selector(playAnimation:)
                                   userInfo:nil
                                   repeats:NO];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)playImage{
    
    earthImage.animationImages = [NSArray arrayWithObjects:
                                  
                                  [UIImage imageNamed:@"page3-4.png"],
                                  
                                  [UIImage imageNamed:@"page3-5.png"],

                                  [UIImage imageNamed:@"page4-5.png"],nil];
     earthImage.animationDuration = 1.0f;
     earthImage.animationRepeatCount = 1;
    [earthImage startAnimating];
}

-(IBAction)playAnimation:(id)sender{
    
        playButton.hidden=NO;
        [headerImage setImage:[UIImage imageNamed:@"page4-1.png"]];

        [UIView animateWithDuration:2.0
                              delay:0.1
                            options: UIViewAnimationOptionCurveEaseOut
                         animations:^{
                             
                             [ani1 setAlpha:0];
                             [UIView setAnimationDuration:2.0];
                             [ani1 setAlpha:1];
                             [UIView commitAnimations];
                         }
                         completion:^(BOOL finished)
         {
         }];
    
        [UIView animateWithDuration:2.0
                              delay:1.0
                            options: UIViewAnimationOptionCurveEaseIn
                         animations:^{
    
                             [ani2 setAlpha:0];
                             [UIView setAnimationDuration:2.0];
                             [ani2 setAlpha:1];
                             [UIView commitAnimations];
    
    
                         }
                         completion:^(BOOL finished)
         {
         }];
    
        [UIView animateWithDuration:2.0
                              delay:1.5
                            options: UIViewAnimationOptionCurveEaseIn
                         animations:^{
    
                             [ani3 setAlpha:0];
                             [UIView setAnimationDuration:2.0];
                             [ani3 setAlpha:1];
                             [UIView commitAnimations];
                             
                         }
                         completion:^(BOOL finished)
         {
         }];

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
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if (interfaceOrientation==UIInterfaceOrientationLandscapeLeft || interfaceOrientation==UIInterfaceOrientationLandscapeRight)
        return YES;
    
    return NO;
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}
- (IBAction)gotoNext:(id)sender {
    
    page4 *Page4Obj=[[page4 alloc]init];
    [self.navigationController pushViewController:Page4Obj animated:NO];
}
@end
