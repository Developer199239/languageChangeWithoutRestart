//
//  ViewController.m
//  Localization
//
//  Created by MURTUZA on 3/24/18.
//  Copyright © 2018 MURTUZA. All rights reserved.
//

#import "ViewController.h"
#import "BundleLocalization.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.label.text = NSLocalizedString(@"label", nil);
    
}

- (IBAction)english:(id)sender {
    [BundleLocalization sharedInstance].language = @"en";
    NSLog(@"Application language: %@", [BundleLocalization sharedInstance].language);
    
    [[NSUserDefaults standardUserDefaults]  setObject:[NSArray arrayWithObjects:@"en", nil] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    
    UINavigationController *navController = self.navigationController;
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    NSMutableArray *viewControllersArray = [[NSMutableArray alloc] initWithArray:navController.viewControllers];
    [viewControllersArray replaceObjectAtIndex:([navController.viewControllers count] - 1) withObject:vc];
    navController.viewControllers = viewControllersArray;
}
- (IBAction)arabic:(id)sender {
    [BundleLocalization sharedInstance].language = @"ar";
    NSLog(@"Application language: %@", [BundleLocalization sharedInstance].language);
    
    [[NSUserDefaults standardUserDefaults]  setObject:[NSArray arrayWithObjects:@"ar", nil] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    
    UINavigationController *navController = self.navigationController;
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    NSMutableArray *viewControllersArray = [[NSMutableArray alloc] initWithArray:navController.viewControllers];
    [viewControllersArray replaceObjectAtIndex:([navController.viewControllers count] - 1) withObject:vc];
    navController.viewControllers = viewControllersArray;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
