//
//  XYZDrawView.m
//  TouchTracker
//
//  Created by Valliappa Chockalingam on 7/17/14.
//  Copyright (c) 2014 Valliappa Chockalingam. All rights reserved.
//

#import "XYZDrawView.h"
#import "XYZLine.h"

@interface XYZDrawView()

@property (nonatomic, strong) XYZLine* currentLine;

@property (nonatomic, strong) NSMutableArray* finishedLines;

@end

@implementation XYZDrawView

-(instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(self)
    {
        self.finishedLines = [[NSMutableArray alloc] init];
        
        self.backgroundColor = [UIColor grayColor];
    
        self.multipleTouchEnabled = YES;
    }
    
    return self;
}

-(void)strokeLine:(XYZLine*)line
{
    UIBezierPath* bp = [UIBezierPath bezierPath];
    bp.lineWidth = 10;
    bp.lineCapStyle = kCGLineCapRound;
    
    [bp moveToPoint:line.begin];
    [bp addLineToPoint:line.end];
    [bp stroke];
}

-(void)drawRect:(CGRect)rect
{
    [[UIColor blackColor] set];
    
    for(XYZLine* line in self.finishedLines)
    {
        [self strokeLine:line];
    }
    
    if(self.currentLine)
    {
        [[UIColor redColor] set];
        [self strokeLine:self.currentLine];
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch* t = [touches anyObject];
    
    CGPoint location = [t locationInView:self];
    
    self.currentLine = [[XYZLine alloc] init];
    
    self.currentLine.begin = location;
    
    self.currentLine.end = location;
    
    [self setNeedsDisplay];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch* t = [touches anyObject];
    
    CGPoint location = [t locationInView:self];
    
    self.currentLine.end = location;
    
    [self setNeedsDisplay];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.finishedLines addObject:self.currentLine];
    
    self.currentLine = nil;
    
    [self setNeedsDisplay];
}

@end
