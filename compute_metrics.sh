dataset="$1"
experiment_name="$2"

eval_mot17() {
  EXPERIMENT_DIR="$1"
  python3 scripts/run_mot_challenge_fairmot_multiclass.py \
    --BENCHMARK MOT17 \
    --GT_FOLDER ~/Documents/Datasets/mot/MOT17/train/ \
    --TRACKERS_FOLDER ~/Documents/Datasets/mot/MOT17/results/ \
    --TRACKERS_TO_EVAL "$EXPERIMENT_DIR" \
    --SEQMAP_FOLDER data/gt/multiclass/seqmaps/ \
    --CLASSES_TO_EVAL 'pedestrian' 'person_on_vehicle' 'car' 'bicycle' 'motorbike' 'static_person' \
    --SKIP_SPLIT_FOL True
}

eval_kitti() {
  EXPERIMENT_DIR="$1"
  python3 scripts/run_kitti_fairmot_multiclass.py \
    --GT_FOLDER ~/Documents/Datasets/mot/KITTI/training/ \
    --TRACKERS_FOLDER ~/Documents/Datasets/mot/KITTI/training/results/ \
    --TRACKERS_TO_EVAL "$EXPERIMENT_DIR" \
    --TRACKER_SUB_FOLDER '' \
    --SEQMAP_FOLDER data/gt/kitti/kitti_2d_box_train/ \
    --CLASSES_TO_EVAL 'car' 'van' 'truck' 'pedestrian' 'person' 'cyclist' 'tram' \
    --SPLIT_TO_EVAL 'training'
}

eval_waymov2mot() {
  EXPERIMENT_DIR="$1"
  python3 scripts/run_waymov2mot_fairmot_multiclass.py \
    --GT_FOLDER ~/Documents/Datasets/mot/waymo/waymoV2-mot17/train \
    --TRACKERS_FOLDER ~/Documents/Datasets/mot/waymo/waymoV2-mot17/results \
    --TRACKERS_TO_EVAL "$EXPERIMENT_DIR" \
    --SEQMAP_FILE data/gt/multiclass/seqmaps/waymoV2MOT-train.txt \
    --CLASSES_TO_EVAL 'car' 'pedestrian' 'bicycle'  \
    --SKIP_SPLIT_FOL True
}

if [ "mot17" = "$dataset" ];then
  eval_mot17 "$experiment_name"
elif [ "kitti" = "$dataset"]; then
  eval_kitti "$experiment_name"
elif [ "waymov2" = "$dataset" ];then
  eval_waymov2mot "$experiment_name"
fi

#eval_mot17 "fairmot_mot17_baseline"
#eval_kitti "fairmot_kitti_baseline"
#eval_waymov2mot "fairmot_waymoV2Mot_baseline"
#eval_mot17 "deepsort_mot17_baseline"
#eval_kitti "deepsort_kitti_baseline"
#eval_mot17 "deepsort_mot17_reid_tuned"
#eval_kitti "deepsort_kitti_reid_tuned"
#eval_mot17 "bytetrack_mot17_baseline"
#eval_kitti "bytetrack_kitti_baseline"
#eval_mot17 "c_bioutrack_mot17_baseline"
#eval_kitti "c_bioutrack_kitti_baseline"
#eval_waymov2mot "deepsort_waymoV2Mot_baseline"
#eval_waymov2mot "bytetrack_waymoV2Mot_baseline"
#eval_mot17 "ocsort_mot17_baseline"
#eval_kitti "ocsort_kitti_baseline"
#eval_waymov2mot "ocsort_waymoV2Mot_baseline"
#eval_waymov2mot "c_bioutrack_waymoV2Mot_baseline"
#eval_mot17 "ucmctrack_mot17_baseline"
#eval_kitti "ucmctrack_kitti_baseline"
#eval_waymov2mot "ucmctrack_waymoV2Mot_baseline"
#eval_mot17 "fairmot_mot17_dla34_tuned"
#eval_kitti "fairmot_kitti_dla34_tuned"
#eval_mot17 "boosttrack_mot17_baseline"
#eval_kitti "boosttrack_kitti_baseline"
#eval_waymov2mot "boosttrack_waymoV2Mot_baseline"
#eval_mot17 "ablation_mot17"
#eval_kitti "ablation_kitti"
#eval_waymov2mot "ablation_waymoV2Mot"
#eval_kitti "test"

