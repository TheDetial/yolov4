CUDA_VISIBLE_DEVICES=4,5,6,7 python train.py \
--backbone cspdarknet53 \
--model yolov4 \
--dataloader voc_dataload \
--trainlist ./list/voc2007_2012/train_VOC200712.txt \
--vallist ./list/voc2007_2012/val_VOC200712.txt \
--batch_size 36 \
--freeze_lr 0.0001 \
--unfreeze_lr 0.001 \
--trainloss yololoss \
--logdir ./trained/voc0712/cspdarknet53/ \
--start_epoch 0 \
--freeze_epoches 30 \
--max_epoches 200 \
--bbpretrain \
--freeze_train \
--input_height 416 \
--input_width 416 \
--anchors_path ./gen_anchors/voc2007_2012/voc_anchors.txt \
--classes_path ./list/voc2007_2012/voc_classes.txt \
--mosaic \
--Cosine_lr \
--label_smoothing 0.01 \
