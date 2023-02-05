# Week 2 Lab: System Verilog

[dv/ Exercise 1,2,3](https://github.com/NYU-Processor-Design/onboarding-lab-2/tree/main/dv)

Exercise1 exhaustively tests all possible inputs, Exercise2 samples some possible initial values for a hundred cycles, and Exercise3 randomly tests inputs for a hundred cycles. Why do you think the reason for these different testing approaches are? What are their *advantages and disadvantages?*

The reason for exhaustive testing in the first case is attributed to something similar to what happens in hardware. Trying out all combinations so expose a minor bug which can be the reason for something more catastrophic. While exhaustive is more time consuming, it also requires more memory usage and clock cycles since we test not arbitrarily but the entirety of it.

The only reason I can think of for using these different apporaches is to save time, memory and  the fact that it is easier to generate. Unlike sampling, we do things quicker and easier. Also, we are restricted and can only allocate a set amount of space for trials and errors especially when it comes to hardware designing and hence cannot afford to make the design slower / costlier. Also, we cannot form new tests based on previous input data since the errors are random as subjected to testing and do not point towards the origin of the bug.
