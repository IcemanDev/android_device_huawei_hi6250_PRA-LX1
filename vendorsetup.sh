
e="\x1b[";c=$e"39;49;00m";r=$e"1;91m";y=$e"93;01m";
if [[ -e lineage/jenkins ]]; then
	add_lunch_combo omni_hi6250-eng
  else
	echo -e $y"
 "======================================="
 |  WARNING!                           |
 |  Repo not LineageOS.                |
 |  TWRP may not work properly!        |
 |  Read in the README.md file         |
 "======================================="
 "$c;
	add_lunch_combo omni_hi6250-eng	
fi
