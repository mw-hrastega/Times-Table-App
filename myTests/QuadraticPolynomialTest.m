classdef QuadraticPolynomialTest < matlab.unittest.TestCase
    methods (Test)
        function realSolution(testCase)
            p = QuadraticPolynomial(1,-3,2);
            actSolution = p.solve();
            expSolution = [1 2];
            testCase.verifyEqual(actSolution,expSolution)
        end
        function imaginarySolution(testCase)
            p = QuadraticPolynomial(1,2,10);
            actSolution = p.solve();
            expSolution = [-1-3i -1+3i];
            testCase.verifyEqual(actSolution,expSolution)
        end
        function nonnumericInput(testCase)
            testCase.verifyError(@()QuadraticPolynomial(1,"-3",2), ...
                "QuadraticPolynomial:InputMustBeNumeric")
        end
        function plotPolynomial(testCase)
            p = QuadraticPolynomial(1,-3,2);
            fig = figure;
            testCase.addTeardown(@close,fig)
            ax = axes(fig);
            p.plot(ax)
            actYLabelText = ax.YLabel.String;
            expYLabelText = '1.00x^2-3.00x+2.00';
            testCase.verifyEqual(actYLabelText,expYLabelText)
        end
    end
end
