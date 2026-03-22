---
description: "Create a hotfix specification for critical production issues requiring immediate attention"
agent: "bug-analyst"
argument-hint: "Describe the critical production issue"
---

Create an urgent hotfix specification using the template at [hotfix template](../../../specs/templates/hotfix.md).

This is for **critical production issues** that need immediate resolution.

Follow these steps:
1. Understand the critical issue from the user's input
2. Perform rapid root cause analysis focused on the most likely cause
3. Propose the minimal, safe fix to resolve the issue
4. Write a concise hotfix spec with clear rollback plan
5. Save to `specs/hotfixes/` using the naming convention `{YYYY-MM-DD}-{short-slug}.md`
6. Assign to the appropriate engineering agent with URGENT priority
