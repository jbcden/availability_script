#!/usr/bin/expect

set machine [lindex $argv 0];
set password [lindex $argv 1];

log_user 0

spawn ssh -o ConnectTimeout=3 -o StrictHostKeyChecking=no "labmin@$machine"

expect "password" {send "$password\n"}

expect "$ " {send "mpstat | tail -1 | sed -e 's/\[ \]\\+/;/g' | cut -d';' -f 13\n"}

expect "$ " {send "exit\n"}
puts "$machine "
puts "$expect_out(buffer)"

