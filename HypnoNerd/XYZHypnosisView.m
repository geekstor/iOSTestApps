//
//  XYZHypnosisView.m
//  Hypnotizer
//
//  Created by Valliappa Chockalingam on 7/4/14.
//  Copyright (c) 2014 Valliappa Chockalingam. All rights reserved.
//

#import "XYZHypnosisView.h"

@implementation XYZHypnosisView

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    
    CGPoint center;
    
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // float radius = (MIN(bounds.size.width, bounds.size.height) / 2.0);
    
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath* path = [[UIBezierPath alloc] init];
    
    path.lineWidth = 10.0;
    
    [self.circleColor setStroke];
    
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20)
    {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        
        [path addArcWithCenter:center radius:currentRadius startAngle:0 endAngle:M_PI * 2.0 clockwise:YES];
    }
    
    // [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    
    [path stroke];
    
    UIBezierPath* clipPath = [[UIBezierPath alloc] init];
    
    [clipPath moveToPoint:CGPointMake(0.4 * center.x, 1.5 * center.y)];
    
    [clipPath addLineToPoint:CGPointMake(center.x, 0.25 * center.y)];
    
    [clipPath addLineToPoint:CGPointMake(1.6 * center.x, 1.5 * center.y)];
    
    [clipPath addLineToPoint:CGPointMake(0.75 * center.x, 1.5 * center.y)];
    
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(currentContext);
    
    // Drawing stuff here will appear with a shadow
    
    /* [clipPath addClip];
    
    CGFloat locations[2] = {0.0, 1.0};
    
    CGFloat components[8] = {0.0, 1.0, 0.0, 1.0, 1.0, 1.0, 0.0, 1.0};
    
    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorspace, components, locations, 2);
    
    CGPoint startPoint = CGPointMake(center.x, 0.25 * center.y);
    CGPoint endPoint = CGPointMake(center.x, 1.5 * center.y);
    
    CGContextDrawLinearGradient(currentContext, gradient, startPoint, endPoint, 0);
    
    CGGradientRelease(gradient);
    
    CGColorSpaceRelease(colorspace);
    
    CGContextRestoreGState(currentContext);
    
    CGContextSaveGState(currentContext);
    
    CGContextSetShadow(currentContext, CGSizeMake(7, 10), 0);
    
    UIImage* logoImage = [UIImage imageNamed:@"TranspRasp.png"];
    
    [logoImage drawInRect:CGRectMake(0.4 * center.x, 0.25 * center.y, (1.6 * center.x) - (0.4 * center.x),
                                    (1.5 * center.y - 0.25 * center.y))];
    
    CGContextRestoreGState(currentContext);
     
     */
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(self)
    {
        self.circleColor = [UIColor lightGrayColor];
        self.backgroundColor = [UIColor clearColor];
    }
    
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(self.segment.selectedSegmentIndex != -1)
    {
        self.segment.selectedSegmentIndex = -1;
    }
    
    NSLog(@"%@ was touched", self);
    
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor* randomColor = [UIColor colorWithRed:red green: green blue: blue alpha:1.0];
    
    self.circleColor = randomColor;
}

- (void)setCircleColor:(UIColor *)circleColor
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}

@end
