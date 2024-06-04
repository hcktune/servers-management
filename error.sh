#!/bin/bash

jq '
  {
    "error_messages": (
      .plays[].tasks[].hosts 
      | to_entries[] 
      | select(.value.unreachable == true) 
      | { (.key): .value.msg }
    )
  },
    .stats
'