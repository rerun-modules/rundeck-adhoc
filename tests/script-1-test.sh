#!/usr/bin/env roundup
#
#/ usage:  rerun stubbs:test -m rundeck-adhoc -p script [--answers <>]
#

# Helpers
# -------
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------
describe "script"

# ------------------------------
# Replace this test. 
it_fails_without_a_real_test() {
    exit 1
}
# ------------------------------

