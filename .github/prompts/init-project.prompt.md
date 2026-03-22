---
description: "Initialize or reconfigure the Engineer Hive framework for a project"
agent: "hive-initializer"
argument-hint: "New project or existing project to configure"
---

Run the Hive Initializer to set up or reconfigure the Engineer Hive framework.

For a **new project**: Interview the engineer about the project's stack, architecture, and conventions, then configure all framework components accordingly.

For an **existing project**: Analyze the current codebase to detect stack, patterns, and conventions, then configure the framework to match.

After setup:
1. Generate stack-specific instruction files in `.github/instructions/`
2. Verify all framework components are in place
3. Run a health check on the framework structure
4. Provide a summary and next steps
