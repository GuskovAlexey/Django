#!/bin/bash

API_ENDPOINT="localhost:8085/hello/"
EXPECTED_RESPONSE="Hello, World!"  

RESPONSE=$(curl -s "$API_ENDPOINT")

if [ "$RESPONSE" = "$EXPECTED_RESPONSE" ]; then
  echo "Test Passed: Response is CORRECT."
  exit 0
else
  echo "Test Failed: Response is INCORRECT."
  exit 1
fi