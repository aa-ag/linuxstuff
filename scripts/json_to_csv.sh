#!/bin/bash

$ (head -1 mock_user_data.json | jq -r 'keys | @csv' && jq -r 'map(tostring) | @csv' < mock_user_data.json) > jsonAsCSV.csv