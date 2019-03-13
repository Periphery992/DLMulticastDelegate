//
//  NSObject+DLMulticastDelegate.h
//  CocoaLumberjack
//
//  Created by Posen on 2019/3/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (DLMulticastDelegate)
@property (nonatomic, strong) NSHashTable *delegateTable;


- (void)addDelegate:(id)objects;

- (void)removeDelegate:(id)object;

@end

NS_ASSUME_NONNULL_END
