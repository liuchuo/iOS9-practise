//
//  ViewController.h
//  20160125-1
//
//  Created by ChenXin on 16/1/25.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *UserOutput;

@property (strong, nonatomic) IBOutlet UITextField *UserInput;
- (IBAction)setOutput:(id)sender;

@end

