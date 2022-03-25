#!/usr/bin/env bash
# Automation script for renaming Feedzai source extracts archived using gzip()
# Call this script using the following signature script '<S3 prefix>' '<file prefix>'
# Example: script_name.sh '/dbfs/mnt/landing/cm/fdz_cloud/test' 'archive-preprod-ap-southeast-2-am_event_status_reason'
# echo "bash -x is super useful!"

# version 0.1, framework for handling files in S3 created
# TODO: handing renaming files
# TODO: handling deletion of archive files

if [ -z ${1} ]; then
  echo 'please provide at least 2 arguments'
  exit 3
fi

if ! [ -d ${1} ]; then
    echo 'please re-execute script & enter a source files directory name as a parameter.'
    exit 6
fi

# archive-preprod-ap-southeast-2-am_event_transfers-2022-01-05-01 -> cm-fdz_cloud-am_event_transfers-20220105010001-2
# archive-preprod-ap-southeast-2-am_event_cards-2022-01-05-01 -> cm-fdz_cloud-am_event_cards-20220105010001-8
# ...

transform_name() {
  f_ext=${OLD_FILENAME#*.}
  minus_one=${OLD_FILENAME##*-}
  rest_of_minus_one=${OLD_FILENAME%-*}
  minus_two=${rest_of_minus_one##*-}
  rest_of_minus_two=${rest_of_minus_one%-*}
  minus_three=${rest_of_minus_two##*-}
  rest_of_minus_three=${rest_of_minus_two%-*}
  minus_four=${rest_of_minus_three##*-}
  minus_one=${minus_one%.*}
  dash="-"
  filler="0001"
  dot="."
  slash="/"

  case ${1} in
  "archive-preprod-ap-southeast-2-am_event_cards")
    NEW_FILENAME="cm-fdz_cloud-am_event_cards"
    echo ${NEW_FILENAME}$dash$minus_four$minus_three$minus_two$minus_one$filler$dash$LINES_NUM
    ;;
  "archive-preprod-ap-southeast-2-am_event_transfers")
    NEW_FILENAME="cm-fdz_cloud-am_event_transfers"
    echo ${NEW_FILENAME}$dash$minus_four$minus_three$minus_two$minus_one$filler$dash$LINES_NUM
    ;;
  "archive-preprod-ap-southeast-2-am_event_status")
    NEW_FILENAME="cm-fdz_cloud-am_event_status"
    echo ${NEW_FILENAME}$dash$minus_four$minus_three$minus_two$minus_one$filler$dash$LINES_NUM
    ;;
  "archive-preprod-ap-southeast-2-am_event_status_reason")
#    echo "setting up cloud table name as <cm-fdz_cloud-am_event_status_reason>"
    NEW_FILENAME="cm-fdz_cloud-am_event_status_reason"
    echo ${NEW_FILENAME}$dash$minus_four$minus_three$minus_two$minus_one$filler$dash$LINES_NUM
    ;;
  "archive-preprod-ap-southeast-2-am_status_reason")
    NEW_FILENAME="cm-fdz_cloud-am_status_reason"
    echo ${NEW_FILENAME}$dash$minus_four$minus_three$minus_two$minus_one$filler$dash$LINES_NUM
    ;;
  esac
}

increment() {
echo $(( ${1} + 1))
}

decrement() {
echo $(( ${1} - 1))
}

COUNTER=1
if ! [ ls ${1}/${2}*.gz >/dev/null 2>&1 ]; then
  for i in $(ls ${1}/${2}*.gz)
    do
#      echo "Start timestamp: $( date +%s )"
      start=$( date +%s%N )
      gzip -d $i
      csv_filename=${i%.*}
      LINES_NUM=$( wc -l $csv_filename | awk '{ print $1 }' )
      LINES_NUM=$(decrement ${LINES_NUM})
      printf "Number of lines without header in $i is $LINES_NUM\n"
      DIRECTORY=${i%/*}
      OLD_FILENAME=${i##*/}
      NEW_FILENAME=$(transform_name ${2})
      DESTINATION=$(echo "$DIRECTORY/$NEW_FILENAME")

      echo "STEP $COUNTER: Renaming file $csv_filename into $DESTINATION"
      mv $csv_filename $DESTINATION
      echo "             : Archiving file $DESTINATION"
      gzip $DESTINATION
#      echo "End timestamp: $( date +%s )"
      end=$( date +%s%N )
      COUNTER=$(increment ${COUNTER})
      echo "Time elapsed: $(( (${end}-${start})/1000000 )) msec."
    done

  else echo "please upload source files to process into ${1} bucket."

fi