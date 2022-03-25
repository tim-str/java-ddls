#!/usr/bin/env bash
# Patterns - Extended globbing
echo "Showing how extended globbing works"

# shopt -s extglob

for i in /dbfs/mnt/landing/cm/fdz_cloud/fdz_cloud_event_cards/*
do
  case $i in
  !(*.doc|*.txt|*.pdf) )
      echo $i is not a document
        ;;
    * )
      echo $i is not a document
    ;;
  esac
done;

# exit 0 is unnecessary
exit 0