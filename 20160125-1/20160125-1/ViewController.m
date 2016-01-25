//
//  ViewController.m
//  20160125-1
//
//  Created by ChenXin on 16/1/25.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setOutput:(id)sender {
    [[self UserOutput]setText:[[self UserInput] text]];
}
@end
