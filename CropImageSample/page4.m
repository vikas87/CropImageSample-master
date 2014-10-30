//
//  page4.m
//  CropImageSample
//
//  Created by Vikas on 29/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import "page4.h"

@interface page4 ()

@end

@implementation page4
@synthesize playBtn;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(445, 415, 12, 12)];
    [image setImage:[UIImage imageNamed:@"page4_4.png"]];
    [self.view addSubview:image];
    
    [UIView animateWithDuration:1.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         NSLog(@"this is page4");
                         image.frame=CGRectMake(285,267,321,319);

                     }
                     completion:^(BOOL finished)
                    {
                        playBtn.hidden=NO;
                    }
     ];
    
    
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)gotoNext:(id)sender {
    page5 *Page5Obj=[[page5 alloc]init];
    [self.navigationController pushViewController:Page5Obj animated:NO];
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

@end
