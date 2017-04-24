#! /bin/bash

mkdir -p logs

if [ ! -d ./works/open_subtitles/nn_models/model.ckpt-106500.data-00000-of-00001 ]; then
    cat ./works/open_subtitles/nn_models/model.ckpt-106500.data-00000-of-00001.tar.gz.part-* > ./works/open_subtitles/nn_models/model.ckpt-106500.data-00000-of-00001.tar.gz	
    tar -zxvf ./works/open_subtitles/nn_models/model.ckpt-106500.data-00000-of-00001.tar.gz -C ./works/open_subtitles/nn_models
fi



# chat interactively in command line

~/software/python34/bin/python3  main.py --mode chat --model_name open_subtitles  --scope_name  model01 --vocab_size 100000  

