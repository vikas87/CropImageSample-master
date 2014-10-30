//
//  page6.m
//  CropImageSample
//
//  Created by Vikas on 29/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import "page6.h"

@interface page6 ()

@end

@implementation page6
@synthesize backImage;
@synthesize gotoNextBtn;

- (void)viewDidLoad {
    
     UIImageView *aniImage = [[UIImageView alloc]initWithFrame:CGRectMake(197, 319, 630, 646)];
    
    [aniImage setImage:[UIImage imageNamed:@"page6-3.png"]];
    [self.view addSubview:aniImage];
    [UIView animateWithDuration:1.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         NSLog(@"this is page4");
                         aniImage.frame=CGRectMake(197,122,630,646);
                         
                     }
                     completion:^(BOOL finished)
     {
         [aniImage setAlpha:0];
         
         //--------------------------------------------------------------//
            [backImage setImage:[UIImage imageNamed:@"page6-4.jpg"]];
            [aniImage setImage:[UIImage imageNamed:@"page6-5.png"]];
            aniImage.frame=CGRectMake(207,78,610,611);
         
            [UIView setAnimationDuration:2.0];
            [aniImage setAlpha:1];
            [UIView commitAnimations];
         
         //--------------------------------------------------------------------//
            gotoNextBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [gotoNextBtn addTarget:self action:@selector(gotoNext:)forControlEvents:UIControlEventTouchDown];
            [gotoNextBtn setTitle:@"" forState:UIControlStateNormal];
            gotoNextBtn.frame = CGRectMake(207.0, 78.0, 610.0, 611.0);
            [self.view addSubview:gotoNextBtn];
         //---------------------------------------------------------------------//
         
     }
     ];

    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
-(IBAction) gotoNext: (id) sender{
    
    page7 *Page7Obj=[[page7 alloc]init];
    [self.navigationController pushViewController:Page7Obj animated:NO];
    
    NSLog(@"go to next");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
