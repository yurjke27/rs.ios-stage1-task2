#import "FibonacciResolver.h"

@implementation FibonacciResolver
- (NSArray*)productFibonacciSequenceFor:(NSNumber*)number {
    
    int fib0 = 0;
    int fib1 = 1;
    
    while (fib1 * fib0 < [number intValue]) {
        int tmp = fib0 + fib1;
        fib0 = fib1;
        fib1 = tmp;
    }
    NSNumber* numberFib0 = [NSNumber numberWithInt:fib0];
    NSNumber* numberFib1 = [NSNumber numberWithInt:fib1];
    NSNumber* equalNumber = [NSNumber new];
    if (fib0 * fib1 == [number intValue]) {
        equalNumber = @1;
    } else {
        equalNumber = @0;
    }
    return @[numberFib0, numberFib1, equalNumber];
}
@end
