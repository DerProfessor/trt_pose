#! /bin/bash
set -e
echo "Creating new 'coco_datasets' directory"
mkdir coco_datasets
cd coco_datasets

echo "Downloading train2017..."
mkdir train2017
wget http://images.cocodataset.org/zips/train2017.zip

echo "Downloading val2017..."
mkdir val2017
wget http://images.cocodataset.org/zips/val2017.zip

echo "Downloading annotations..."
wget http://images.cocodataset.org/annotations/annotations_trainval2017.zip

echo "Unzipping train2017..."
unzip -q train2017.zip

echo "Unzipping val2017..."
unzip -q val2017.zip

echo "Unzipping annotations..."
unzip -q annotations_trainval2017.zip
