//
//  BBParallaxViewViewController.m
//  ParallaxEffect
//
//  Created by Bryan Boyko on 8/28/14.
//  Copyright (c) 2014 none. All rights reserved.
//

#import "BBParallaxViewViewController.h"

@interface BBParallaxViewViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UIView *contentView;


@property (weak, nonatomic) IBOutlet UIImageView *topImageView;
@property (weak, nonatomic) IBOutlet UIImageView *secondImageView;
@property (weak, nonatomic) IBOutlet UIImageView *thirdImageView;
@property (weak, nonatomic) IBOutlet UIImageView *fourthImageView;
@property (weak, nonatomic) IBOutlet UIImageView *fifthImageView;


@property (weak, nonatomic) IBOutlet UIView *firstView;
@property (weak, nonatomic) IBOutlet UIView *secondView;
@property (weak, nonatomic) IBOutlet UIView *thirdView;
@property (weak, nonatomic) IBOutlet UIView *fourthView;
@property (weak, nonatomic) IBOutlet UIView *fifthView;


@end

@implementation BBParallaxViewViewController




- (void)viewDidLoad
{
    self.scrollView.delegate = self;
    
    self.firstView.layer.masksToBounds = YES;
    self.secondView.layer.masksToBounds = YES;
    self.thirdView.layer.masksToBounds = YES;
    self.fourthView.layer.masksToBounds = YES;
    self.fifthView.layer.masksToBounds = YES;
    
    self.topImageView.image = [UIImage imageNamed:@"Sweeney"];
    self.secondImageView.image = [UIImage imageNamed:@"OrangeArt"];
    self.thirdImageView.image = [UIImage imageNamed:@"PalmTree"];
    self.fourthImageView.image = [UIImage imageNamed:@"Flower"];
    self.fifthImageView.image = [UIImage imageNamed:@"Building"];
}



- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    [self.scrollView layoutIfNeeded];
    self.scrollView.contentSize = self.contentView.bounds.size;
}


//override this delegate method to coordinate the animation
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"%f", self.scrollView.contentOffset.y);
    
    //animate background view relative to tableview scrolling
    [UIView animateWithDuration:0.0 animations:^{self.topImageView.center = CGPointMake(160, 125 + self.scrollView.contentOffset.y/10);}
     ];
    
    [UIView animateWithDuration:0.0 animations:^{self.secondImageView.center = CGPointMake(160, 125 + self.scrollView.contentOffset.y/10);}
     ];
    
    [UIView animateWithDuration:0.0 animations:^{self.thirdImageView.center = CGPointMake(160, 125 + self.scrollView.contentOffset.y/10);}
     ];
    
    [UIView animateWithDuration:0.0 animations:^{self.fourthImageView.center = CGPointMake(160, 125 + self.scrollView.contentOffset.y/10);}
     ];
    
    [UIView animateWithDuration:0.0 animations:^{self.fifthImageView.center = CGPointMake(160, 125 + self.scrollView.contentOffset.y/10);}
     ];
    
    //prevent tableview from stretching at the bottom and revelaing the view underneath
    if (scrollView.contentOffset.y >= scrollView.contentSize.height - scrollView.frame.size.height) {
        [scrollView setContentOffset:CGPointMake(scrollView.contentOffset.x, scrollView.contentSize.height - scrollView.frame.size.height)];
    }
}

@end
