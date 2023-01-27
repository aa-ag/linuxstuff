#!/bin/bash

$ ping www.wsj.com | ts

$ parallel sh -c "echo this will be said in parallel; sleep 3; echo this will also be said in parallel" -- 1 2 3 4