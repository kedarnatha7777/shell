#!/bin/bash

disc_utilization= $(df -hT | grep xfs | awk -d '{print $6}' | cut -d "%" -f1)
