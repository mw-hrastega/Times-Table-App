function tests = sampleTest
tests = functiontests(localfunctions);
end

function testA(testCase)
verifyEqual(testCase,2+3,5)
end

%function testB(testCase)
%verifyGreaterThan(testCase,13,42)
%end

function testB(testCase)
fatalAssertSubstring(testCase,"Hello World!","lloo")
end

function testC(testCase)
assumeTrue(testCase,1)
end

function testD(testCase)
assertSize(testCase,ones(2,5,3),[2 5 3])
end
