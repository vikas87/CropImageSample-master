//
//  Page2.m
//  CropImageSample
//
//  Created by Vikas on 28/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import "Page2.h"

@interface Page2 ()

@end

@implementation Page2

@synthesize scrollView, imageView;

- (void)dealloc {
    [super dealloc];
    [imageView release];
    [scrollView release];
}
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return imageView;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //---------------------------------- image view -----------------------------------------------------//
    UIImageView *tempImageView =[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pg_2-3-01.png"]];
    self.imageView = tempImageView;
    [imageView setFrame:CGRectMake(16, 5, imageView.frame.size.width, imageView.frame.size.height)];
    
    //---------------------------------scroll view --------------------------------------------------//
    scrollView.contentSize = CGSizeMake(imageView.frame.size.width, imageView.frame.size.height);
    scrollView.maximumZoomScale = 4.0;
    scrollView.minimumZoomScale = 0.75;
    scrollView.clipsToBounds = YES;
    scrollView.delegate = self;
    
    UIImage * buttonImage = [UIImage imageNamed:@"page2-4.png"];
    UIImage * buttonImage2 = [UIImage imageNamed:@"page2-5.png"];
   
//---------------- button1 -------------------------------------------
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [button1 setBackgroundImage:buttonImage forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(buttonAccept:) forControlEvents:UIControlEventTouchUpInside];
    button1.frame = CGRectMake(267.0, 900.0, 154.0, 57.0);
    
    [scrollView addSubview:button1];
    
//---------------- button2 -------------------------------------------
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [button2 setBackgroundImage:buttonImage2 forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(buttonDismiss:)forControlEvents:UIControlEventTouchUpInside];
    button2.frame = CGRectMake(477.0, 900.0, 154.0, 57.0);
    
    [scrollView addSubview:button2];

    
    [scrollView addSubview:imageView];
 //----------------------------------------------------------------------
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSString *name = [prefs objectForKey:@"name"];
    NSLog(@"name is : %@",name);
    
    
    // Do any additional setup after loading the view from its nib.
}

-(IBAction)buttonAccept:(id)sender{
    
    page3 *Page3Obj=[[page3 alloc]init];
    [self.navigationController pushViewController:Page3Obj animated:NO];
    NSLog(@"Accept");
}

-(IBAction)buttonDismiss:(id)sender{
    NSLog(@"Dismiss");
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

//- (void)dealloc {
//    [UIScrollView release];
//    [UIImageView release];
//    [super dealloc];
//}
@end
