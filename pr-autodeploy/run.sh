#!/usr/bin/env bash
cp /pr_autodeploy.rb /workspace/pr_autodeploy.rb
cd /workspace
ruby pr_autodeploy.rb
