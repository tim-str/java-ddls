#!/usr/bin/env bash
# Patterns - Extended globbing
echo "Showing how extended globbing works"
echo "bash -x is super useful!"
# shopt -s extglob

for i in /dbfs/mnt/landing/cm/fdz_cloud/fdz_cloud_event_cards/*
  do
  if [ $i = cm-fdz_cloud-am_event_cards* ]
   then echo $i 'Matches'
  fi
  done

# exit 0 is unnecessary
exit 0