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

<<<<<<< HEAD
{
    NSTimer *_timer;
    int _numberofled,lastOnLED,firstled,start;
    bool flag ;

}
=======
>>>>>>> 532430883a747c7196921eea5bbd5896faeb3133
- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat screenWidth = self.view.frame.size.width;
    CGFloat screenHeight =  self.view.frame.size.height;
<<<<<<< HEAD
    _numberofled = 8;
    lastOnLED = -1;
    firstled = _numberofled;
    flag  = true;
    [self initled:_numberofled withhize:screenHeight];
    start= 0;
    NSLog(@"%f %f",screenHeight ,screenWidth);


    _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(running2side) userInfo:nil repeats:true];
    
}
// Add led to UIview
- (void) addLedAtX: (GLfloat) x AtY: (GLfloat) y withTag: (int) tag{
    UIImageView *led = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"green.png"]];
    led.center = CGPointMake(x, y);
    led.tag = tag+100;
    [self.view addSubview:led];
    
    
}
- (void) initled:(int) numberofled withhize: (int) height{
    for(int x = 0,z = 20; x < numberofled; x=x+1,z=z+40)
    {
        [self addLedAtX:z AtY:height/2 withTag:x];
    }
}
- (void) turnOFFLed:(int) index{
    UIView *view = [self.view viewWithTag:index+100];
    if(view && [view isMemberOfClass:[UIImageView class]])
    {
        UIImageView *ball = (UIImageView*) view;
        ball.image  = [ UIImage imageNamed:@"blue.png"];
        
        
    }
    
}
- (void) turnONLed:(int) index{
    UIView *view = [self.view viewWithTag:index+100];
    if(view && [view isMemberOfClass:[UIImageView class]])
    {
        UIImageView *ball = (UIImageView*) view;
        ball.image  = [ UIImage imageNamed:@"green.png"];
        
        
    }
}
- (void) runningLED
{
    if (firstled != _numberofled) {
        [self turnOFFLed:firstled];
    }

    if (firstled > 0) {
        firstled--;
    } else {  //Reach the last LED in row, move to first LED
        firstled = _numberofled;
    }
    [self turnONLed:firstled];

}
- (void) running2side {

    if (flag) {

        if (start == 0) {
            [self turnOFFLed:start];
        }

        if (start < _numberofled )
            start++;
            [self turnONLed:start];
            if (start == _numberofled)
                flag = false;

    }
        else {

            if (start != _numberofled) {
                [self turnOFFLed:start];
            }

            if (start > 0)
                start--;

            [self turnONLed:start];
            if (start == 0)
                flag = true;
        }



}
- (void) runningLEDReverse
{
    if (lastOnLED != -1) {
        [self turnOFFLed:lastOnLED];
    }

    if (lastOnLED != _numberofled - 1) {
        lastOnLED++;
    } else {  //Reach the last LED in row, move to first LED
        lastOnLED = 0;
    }
    [self turnONLed:lastOnLED];

}
=======

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


>>>>>>> 532430883a747c7196921eea5bbd5896faeb3133
@end
