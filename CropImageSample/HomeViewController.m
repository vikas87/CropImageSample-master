//
//  HomeViewController.m
//  CropImageSample
//
//  Created by Vikas on 28/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController
@synthesize text;

- (void)viewDidLoad {
    
    [self.navigationController setNavigationBarHidden:YES];
    self.text.delegate = self;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)gotoNext:(id)sender {
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs setObject:text.text forKey:@"name"];
    [prefs synchronize];
    
    Page2 *Page2Obj=[[Page2 alloc]init];
    [self.navigationController pushViewController:Page2Obj animated:NO];
    
    NSLog(@"%@",text.text);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.text) {
        [textField resignFirstResponder];
        return NO;
    }
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    
    if (![[touch view] isKindOfClass:[UITextField class]]) {
        [self.view endEditing:YES];
    }
    [super touchesBegan:touches withEvent:event];
}
@end
