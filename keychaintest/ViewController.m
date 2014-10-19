//
//  ViewController.m
//  keychaintest
//
//  Created by Anand Biligiri on 10/19/14.
//  Copyright (c) 2014 None. All rights reserved.
//

#import "ViewController.h"
#import "KeychainItemWrapper.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    KeychainItemWrapper *wrapper = [[KeychainItemWrapper alloc] initWithIdentifier:@"testidentifier" accessGroup:nil];
    [wrapper setObject:@"testservice" forKey:(__bridge NSString*)kSecAttrService];
    [wrapper setObject:@"testaccount" forKey:(__bridge NSString*)kSecAttrAccount];
    [wrapper setObject:(__bridge NSString*)kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly forKey:(__bridge NSString*)kSecAttrAccessible];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
