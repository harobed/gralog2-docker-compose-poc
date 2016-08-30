#!/bin/bash
set -e
set -x
echo -ne '{"version": "1.1","host":"example.org","short_message":"A short TCP message that helps you identify what is going on","full_message":"Backtrace here\\n\\nmore stuff","level":1,"_user_id":9001,"_some_info":"foo","_some_env_var":"bar"}\x00' | nc -w 1 127.0.0.1 12201

