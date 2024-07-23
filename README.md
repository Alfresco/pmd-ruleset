# Alfresco PMD Ruleset

The default PMD ruleset for Java projects in Alfresco.

The rules in this project are provided by a particular version of PMD and using an earlier version of PMD with the ruleset will cause PMD to exit with an error.

The `ya-pmd-scan` tool uses rulesets from this project by default. This will be master unless there is a tag starting with the PMD version (it's also possible to override this behaviour with the property `pmd-ruleset-ref-override`). This allows the addition of new rules from later versions of PMD providing a tag is created for any older versions.

## Example - Adding new rules included in PMD 7.3.0

Scenario PMD 7.3.0 includes some new rules and the existing ruleset was compatible with PMD 7.0.0+.

1. Gather a list of the old PMD releases from 7.0.0 onwards (`7.0.0`, `7.1.0` and `7.2.0`).
2. Create a tag at the existing HEAD for each of these using the current date (e.g. `7.0.0_20240723`, `7.1.0_20240723` and `7.2.0_20240723`).
3. Push the tags.
4. Add the new rules and create a pull request.
5. Merge the reviewed pull request into master.

The creation and pushing of the tags can be done with the script:

```bash
update_pmd.sh 7.0.0 7.1.0 7.2.0
```
