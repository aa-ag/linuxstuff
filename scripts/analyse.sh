#!/bin/bash

## create db
sqlite3 testdb

## create table
.mode csv fakedata

## pour data from csv to table
.import test_data/fake_data.csv fakedata