# Times Table App

**Times Table App** is an educational MATLAB application that quizzes users on multiplication tables. Players select a times table (default: 3), answer randomly generated questions (multiplying by 1–12), and track their score.

The project includes:
- **Core game logic** (`source/timesTableGame.m`) — question generation, answer validation, and score tracking
- **Supplementary math tools** (`mySource/QuadraticPolynomial.m`) — a quadratic equation solver
- **Test suites** (`tests/`, `myTests/`) — covering answer correctness, question range, table switching, and polynomial solving
- **CI/CD pipelines** — configured for GitHub Actions, CircleCI, Azure Pipelines, and Jenkins
- **Build automation** (`buildfile.m`) — static analysis, testing, and source archiving via MATLAB Build Tool
