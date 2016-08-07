//
//  ViewController.m
//  ledchain-ex
//
//  Created by Tan on 8/7/16.
//  Copyright © 2016 Tan. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat screenWidth = self.view.frame.size.width;
    CGFloat screenHeight =  self.view.frame.size.height;

        for (int y = screenHeight/10; y < screenHeight -10 ; y=y+screenHeight/10)
        {
            for (int x = 0; x < screenWidth -10; x=x+screenWidth/10)
              {
            [self addLedAtX:x AtY:y Width:screenWidth/10 Height:screenWidth/10];
              }
        }
    
    NSLog(@"%f %f",screenHeight ,screenWidth); 
    
    
}
// Add led to UIview
- (void) addLedAtX: (int) x AtY: (int) y Width:(int) width Height:(int) height{
    UIView *catView = [[UIView alloc] initWithFrame:CGRectMake(x,y,width,height)];
    
    UIImage *image = [UIImage imageNamed:@"led.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    // Do any additional setup after loading the view, typically from a nib.
    imageView.frame = catView.bounds;
    
    // add the imageview to the superview
    [catView addSubview:imageView];
    
    //add the view to the main view
    
    [self.view addSubview:catView];
    
    
}


@end
