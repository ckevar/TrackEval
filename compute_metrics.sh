eval_fairmot_mot17() {
  python3 scripts/run_mot_challenge_fairmot_multiclass.py \
    --BENCHMARK MOT17 \
    --GT_FOLDER ~/Documents/Datasets/mot/MOT17/train/ \
    --TRACKERS_FOLDER ~/Documents/Datasets/mot/MOT17/results/ \
    --SEQMAP_FOLDER data/gt/multiclass/seqmaps/ \
    --CLASSES_TO_EVAL 'pedestrian' 'person_on_vehicle' 'car' 'bicycle' 'motorbike' 'static_person' \
    --SKIP_SPLIT_FOL True
}

eval_fairmot_kitti() {
  python3 scripts/run_kitti_fairmot_multiclass.py \
    --GT_FOLDER ~/Documents/Datasets/mot/KITTI/training/ \
    --TRACKERS_FOLDER ~/Documents/Datasets/mot/KITTI/training/results/ \
    --TRACKER_SUB_FOLDER '' \
    --SEQMAP_FOLDER data/gt/kitti/kitti_2d_box_train/ \
    --CLASSES_TO_EVAL 'car' 'van' 'truck' 'pedestrian' 'person' 'cyclist' 'tram' \
    --SPLIT_TO_EVAL 'training'
}

#eval_fairmot_mot17
eval_fairmot_kitti
