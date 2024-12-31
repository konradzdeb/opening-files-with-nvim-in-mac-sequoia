#! /bin/sh
#
# run_duti.sh
# Copyright (C) 2024 Konrad <konrad.zdeb@me.com>
#
# Run Duti permission refresh script
duti ~/.dutirc
# Add console log on whether Duti refresh run successfully 
if [ $? -eq 0 ]; then
    syslog -s -k Facility com.apple.console \ 
	    Level Info \ 
	    Sender com.user.dutirefresh.plist \
	    Message "Duti refresh run successfully."
else
    syslog -s -k Facility com.apple.console \ 
	    Level Error \ 
	    Sender com.user.dutirefresh.plist \
	    Message "Duti refresh failed to run."
fi


