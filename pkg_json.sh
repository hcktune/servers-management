#!/bin/bash

jq '
  .plays[].tasks[1].hosts 
  | to_entries[] 
  | {
      ip: .key, 
      changed: .value.changed, 
      update: .value.invocation.module_args.update,
      state: .value.invocation.module_args.state, 
      file_to_deb: .value.invocation.module_args.deb, 
      upgrade: .value.invocation.module_args.upgrade, 
      stderr: .value.stderr,
      stdout_lines: .value.stdout_lines,
      msg: .value.msg
    }
'
