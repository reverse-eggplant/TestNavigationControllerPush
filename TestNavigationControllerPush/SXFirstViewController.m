//
//  SXFirstViewController.m
//  TestNavigationControllerPush
//
//  Created by malone on 14-5-13.
//  Copyright (c) 2014年 sanxian. All rights reserved.
//

#import "SXFirstViewController.h"
#import "SXSecondViewController.h"
#import "SXThirdViewController.h"

@interface SXFirstViewController ()

@end

@implementation SXFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.backgroundColor = [UIColor whiteColor];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"first";

    [self addButtons];
    
    
    
    
    // Do any additional setup after loading the view.
}

- (void)addButtons
{
    UIButton * secondButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [secondButton setTitle:@"第二控制器" forState:UIControlStateNormal];
    secondButton.backgroundColor = [UIColor grayColor];
    [secondButton addTarget:self action:@selector(goSecond) forControlEvents:UIControlEventTouchUpInside];
    secondButton.frame = CGRectMake(100.0, 320.0, 120.0, 40.0);
    [self.view addSubview:secondButton];
    
    
    UIButton * thirdButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [thirdButton setTitle:@"第三控制器" forState:UIControlStateNormal];
    thirdButton.backgroundColor = [UIColor greenColor];
    [thirdButton addTarget:self action:@selector(goThird) forControlEvents:UIControlEventTouchUpInside];
    thirdButton.frame = CGRectMake(100.0, 380.0, 120.0, 40.0);
    [self.view addSubview:thirdButton];
}

- (void)goSecond{
    
    [self.navigationController pushViewController:[[SXSecondViewController alloc]init] animated:YES];
    
}

- (void)goThird{
    [self.navigationController pushViewController:[[SXThirdViewController alloc]init] animated:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
