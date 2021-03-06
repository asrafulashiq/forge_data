#!/usr/bin/fish

set datasets youtube_tempered davis_tempered

if test -d data/all
	rm -rf data/all
end

mkdir data/all
mkdir data/all/vid
mkdir data/all/gt_mask
mkdir data/all/gt
echo "created path"

set data_path $PWD/data/all
echo "$data_path"
echo

for each in $datasets
	set cur_path "$PWD/data/$each"
	ln -s $cur_path/vid/* $data_path/vid/
	ln -s $cur_path/gt/* $data_path/gt/
	ln -s $cur_path/gt_mask/* $data_path/gt_mask/
	echo "$each copied"
end
