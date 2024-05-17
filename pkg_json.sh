#!/bin/bash

jq '.plays[].tasks.[1].hosts |  to_entries[] | {ip: .key, changed: select(.key).value.changed, update: select(.key).value.update, state: select(.key).valued.state, file_to_deb: select(.key).value.deb, upgrade: select(.key).value.upgrade, autoclean: select(.key).value.autoclean, autoremove: select(.key).value.autoremove, purge: select(.key).value.purge, msg: select(.key).value.msg}'
