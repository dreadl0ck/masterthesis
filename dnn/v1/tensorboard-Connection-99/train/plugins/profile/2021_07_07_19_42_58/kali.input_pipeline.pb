	?\o??@@?\o??@@!?\o??@@	?V???N@?V???N@!?V???N@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?\o??@@q?{??#??1-wf??\??A??Sr3??I?PۆQ?@Y???je???rEagerKernelExecute 0*	R???!Y@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat*t^c????!J?XH;?=@)ض(?A&??1??q6n8@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice|~!<ژ?!H0?3]$8@)|~!<ژ?1H0?3]$8@:Preprocessing2U
Iterator::Model::ParallelMapV2'?Wʒ?!???@2@)'?Wʒ?1???@2@:Preprocessing2F
Iterator::Model?p>????!?6+S&@@)?> ?M???1x?BM??+@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate"?uq??!I???I/?@)wJ??|?1?*??+@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorE???V	v?!f.zZh@)E???V	v?1f.zZh@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipٙB?5v??!?dj?l?P@)Mۿ?Ҥt?1z?VI?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap3?}ƅ??!x?}??@@)!?J?^?1}???????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 25.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?47.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?V???N@I?C??YR@Quk6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	q?{??#??q?{??#??!q?{??#??      ??!       "	-wf??\??-wf??\??!-wf??\??*      ??!       2	??Sr3????Sr3??!??Sr3??:	?PۆQ?@?PۆQ?@!?PۆQ?@B      ??!       J	???je??????je???!???je???R      ??!       Z	???je??????je???!???je???b      ??!       JGPUY?V???N@b q?C??YR@yuk6@