# Firebase-Bug-Example
An example of SwiftPM Firebase Bug

#Steps
1. Run test suite for `SubFramework`
2. Tests should fail due to missing reachability
3. Comment out `ConvertTests.test_timeToPickerValue_convertsHoursAndMinutes_toNativePickerData` re-run and tests will pass.
