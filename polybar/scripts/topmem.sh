#!/bin/bash
# File              : topmem.sh
# Author            : Ahmed Nasser <ahmednasser@gmail.com>
# Date              : 07.08.2019
# Last Modified Date: 07.08.2019
# Last Modified By  : Ahmed Nasser <ahmednasser@gmail.com>
#!/bin/sh

notify-send "$(ps axch -o cmd:15,%mem --sort=-%mem | head)"
