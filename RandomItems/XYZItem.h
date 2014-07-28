//
//  XYZItem.h
//  RandomItems
//
//  Created by Valliappa Chockalingam on 7/2/14.
//  Copyright (c) 2014 Valliappa Chockalingam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZItem : NSObject
// {
    // NSString* _itemName;
    // NSString* _serialNumber;
    // int _valueInDollars;
    // NSDate* _dateCreated;
    
    // Demonstrating Strong Reference Cycles, solving with __weak and taking an analogue to parent-child relationships
    // XYZItem* _containedItem;
    // __weak XYZItem* _container;

// }

@property (nonatomic, readwrite, strong) XYZItem* containedItem;
@property (nonatomic, readwrite, weak) XYZItem* container;

@property (nonatomic, readwrite, copy) NSString* itemName;
@property (nonatomic, readwrite, copy) NSString* serialNumber;
@property (nonatomic, readwrite, unsafe_unretained) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate* dateCreated;

+ (instancetype) randomItem;

// Designated init.
- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString*)sNumber;
- (instancetype)initWithItemName:(NSString *)name;

// The Silver Challenge
- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber;

// - (void) setItemName:(NSString *)str;
// - (NSString *)itemName;

// - (void)setSerialNumber:(NSString *)str;
// - (NSString *)serialNumber;

// - (void)setValueInDollars:(int)v;
// - (int)valueInDollars;

// - (NSDate *)dateCreated;

// Checking how dealloc works
// - (void)dealloc;

// Methods to demonstrate a Strong Reference Cycle
// - (void)setContainedItem:(XYZItem *)item;

// - (XYZItem *)containedItem;

// - (void)setContainer:(XYZItem *)item;

// - (XYZItem *)container;

@end
