@implementation Calculator

-(void) setAccumulator: (double) value
{
	accumulator = value;
}

-(void) clear
{
	accumulator = 0;
}

-(double) accumulator
{
	return accumulator;
}

-(double) add: (double) value
{
	accumulator += value;
	return accumulator;
}

-(double) subtract: (double) value
{
	accumulator -= value;
	return accumulator;
}

-(double) multiply: (double) value
{
	accumulator *= value;
	return accumulator;
}

-(double) divide: (double) value
{
	accumulator /= value;
	return accumulator;
}

-(double) changeSign
{
	accumulator = -1 * accumulator;
	return accumulator;
}

-(double) reciprocal
{
	accumulator = 1 / accumulator;
	return accumulator;
}

-(double) xSquared
{
	accumulator = accumulator * accumulator;
	return accumulator;
}

-(double) memoryClear
{
	memory = 0;
	return accumulator;
}

-(double) memoryStore
{
	memory = accumulator;
	return accumulator;
}

-(double) memoryRecall
{
	accumulator = memory;
	return accumulator;
}

-(double) memoryAdd
{
	memory += accumulator;
	return accumulator;
}

-(double) memorySubtract
{
	memory -= accumulator;
	return accumulator;
}

@end