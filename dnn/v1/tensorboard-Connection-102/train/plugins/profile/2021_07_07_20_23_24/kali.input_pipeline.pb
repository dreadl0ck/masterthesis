	??O9&K@??O9&K@!??O9&K@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC??O9&K@??????1?~O?S???AJF?v??Ie?????
@rEagerKernelExecute 0*?(\??X@)      =2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??(???!s?V?>@)?b??Ր??1??PiW?8@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???N?z??!?????1@)???N?z??1?????1@:Preprocessing2U
Iterator::Model::ParallelMapV2???B?i??!??????.@)???B?i??1??????.@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?9z?ަ??!N??#y@@)?[[%X??1???xk?,@:Preprocessing2F
Iterator::Model>??m??!P&Ұ??<@)??Tގp??1?T?f??*@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip ?U+~??!lv??Q@)?vöEy?1Pm?J+?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?N^?u?!bu?O@)?N^?u?1bu?O@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????x̠?!u6云A@)ŏ1w-!_?1?Ē????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?55.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?`?#2?R@Q}jq7?8@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????????????!??????      ??!       "	?~O?S????~O?S???!?~O?S???*      ??!       2	JF?v??JF?v??!JF?v??:	e?????
@e?????
@!e?????
@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?`?#2?R@y}jq7?8@