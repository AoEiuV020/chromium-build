#!/bin/sh
task=$1
if test ! -n "$task"
then
    echo 'usage: build_step.sh <task_name>'
    exit 1
fi
test -f "$FLAG_STOP" && echo skip $task && exit 0 || echo ninja $task
cd "$ROOT/src"
ninja -C out/arm64/ $task || ( test $? == 143 && echo ninja canceld )
if test -n "$PUSH_TOKEN"
then
    cd "$ROOT/cache"
    git add .
    if test -f "$FLAG_STOP"
    then
        git commit -m "ninja $task stop" || echo no change,
    else
        git commit -m "ninja $task" || echo no change,
    fi
    git push
fi
