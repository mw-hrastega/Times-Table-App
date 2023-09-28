// Scripted Pipeline
node {
    runMATLABTests(testResultsJUnit: 'test-results/results.xml',
                   codeCoverageCobertura: 'code-coverage/coverage.xml',
                   sourceFolder: ['source']) 
}
