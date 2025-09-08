# Pull Request Guidelines

## When to Update an Existing PR vs Create a New PR

### Update Existing PR When:

- **Addressing reviewer feedback**: When reviewers provide suggestions for improvements, formatting changes, or corrections to your original PR
- **Small refinements**: Minor fixes, typos, or adjustments to the same logical change
- **Iterative development**: When working on the same feature or fix through multiple iterations
- **Maintaining review context**: Keeping discussion history and review comments in one place

### Create New PR When:

- **Completely different change**: When implementing a different feature or fixing a different issue
- **Major scope change**: When the original PR scope significantly changes beyond the initial intent
- **Starting fresh**: When the existing PR has become too complex or outdated
- **Different approach**: When taking a fundamentally different approach to solve the same problem

## Best Practices

1. **Communicate with reviewers**: Let reviewers know when you've addressed their feedback
2. **Keep commits clean**: Use meaningful commit messages when updating PRs
3. **Update PR description**: Keep the PR description current with any scope changes
4. **Respond to comments**: Address each review comment appropriately

## Example Scenarios

### ✅ Update Existing PR
- Reviewer asks for formatting changes in README.md → Update the same PR
- Code review suggests variable name improvements → Update the same PR
- Tests need minor adjustments → Update the same PR

### ✅ Create New PR
- Original PR was for feature A, now you want to implement feature B → New PR
- Complete rewrite of the original approach → New PR
- Different repository or branch target → New PR

---

**Answer to the Chinese question**: 根据reviewer的提示更新PR时，应该在已有的PR上进行操作，而不是创建新的PR。这样可以保持评审上下文和讨论历史的完整性。