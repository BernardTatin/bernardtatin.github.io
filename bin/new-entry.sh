#!/bin/sh

script=$(basename $0)
cd $(dirname $0)
here=$(dirname $(pwd))
cd ${here}/_posts

title="no title"
[ $# -ne 0 ] && title="$*"

cat > $(date "+%Y-%m-%d-%H%M%Sblog.md") << MD
---
layout: post
title: ${title}
published: true
---

Put your text here.
MD
