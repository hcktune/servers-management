#!/bin/bash

jq '
  .plays[].tasks[1].hosts 
  | to_entries[] 
  | {
      ip: .key, 
      changed: .value.changed, 
      update: .value.update, 
      state: .value.state, 
      file_to_deb: .value.deb, 
      upgrade: .value.upgrade, 
      autoclean: .value.autoclean, 
      autoremove: .value.autoremove, 
      purge: .value.purge, 
      msg: .value.msg
    }
'
