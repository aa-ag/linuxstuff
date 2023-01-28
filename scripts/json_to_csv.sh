#!/bin/bash
$ head -1 test_data/mock_user_data.json | jq -r 'keys | @csv'

jq -r 'map(tostring) | @csv' < test_data/mock_user_data.json