#!/bin/bash
local_path=`pwd`                          
sep='---------------'
for dir in */; do
  echo $sep"Checking Status of" $dir$sep
  d=`echo $dir | sed s#/##`                
  git -C $local_path/$dir checkout master     
  git -C $local_path/$dir pull		 
  git -C $local_path/$dir status            
  echo -e '\n'
done

