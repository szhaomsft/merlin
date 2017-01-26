
for file in /home/gpuuser/merlin/egs/slt_arctic/s1/cmu_us_slt_arctic/orig/*.wav #.wav
do
    filename="${file##*/}"
    file_id="${filename%.*}"

    echo $file_id

    #mkdir /home/gpuuser/merlin/egs/slt_arctic/s1/slt_arctic_full_data/wav
    /home/gpuuser/speech_tools/bin/ch_wave -c 0 -F 32000 /home/gpuuser/merlin/egs/slt_arctic/s1/cmu_us_slt_arctic/orig/${file_id}.wav -o /home/gpuuser/merlin/egs/slt_arctic/s1/slt_arctic_full_data/wav/${file_id}.wav

done
