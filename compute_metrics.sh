python3 scripts/run_mot_challenge_fairmot_multiclass.py \
  --BENCHMARK MOT17 \
  --GT_FOLDER ~/Documents/Datasets/mot/MOT17/train/ \
  --TRACKERS_FOLDER ~/Documents/Datasets/mot/MOT17/results/ \
  --SEQMAP_FOLDER data/gt/multiclass/seqmaps/ \
  --CLASSES_TO_EVAL 'pedestrian' 'person_on_vehicle' 'car' 'bicycle' 'motorbike' 'static_person' \
  --SKIP_SPLIT_FOL True

#python3 scripts/run_kitti_mots.py \
#  --GT_FOLDER ~/Documents/Datasets/mot/KITTI/training/label_02 \
#  --TRACKERS_FOLDER ~/Documents/Datasets/mot/KITTI/training/results/ \
#  --CLASSES_TO_EVAL 'pedestrian' \
  #--SKIP_SPLIT_FOL True
