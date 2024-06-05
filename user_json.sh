#!/usr/bin/bash

jq '
  .plays[].tasks[1].hosts 
  | to_entries[] 
  | {
      ip: .key, 
      password: .value.invocation.module_args.password, 
      user: .value.name, 
      changed: .value.changed, 
      state: .value.state, 
      uid: .value.uid, 
      gid: .value.group, 
      groups: .value.groups, 
      sysUser: .value.invocation.module_args.system, 
      msg: .value.msg
    }
'
