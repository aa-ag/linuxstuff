#!/bin/bash
$ head -1 test_data/mock_user_data.json | jq -r 'keys | @csv'