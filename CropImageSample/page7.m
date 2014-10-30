//
//  page7.m
//  CropImageSample
//
//  Created by Vikas on 30/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import "page7.h"

@interface page7 ()

@end

@implementation page7

- (void)viewDidLoad {
    [super viewDidLoad];
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
    
    page8 *Page8Obj=[[page8 alloc]init];
    [self.navigationController pushViewController:Page8Obj animated:NO];
    
    NSLog(@"go next");
}
@end
