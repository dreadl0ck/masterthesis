	?????@?????@!?????@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?????@y?ߢ????1u?V???A?<?r?}??I,J	???@rEagerKernelExecute 0*	R???1^@2U
Iterator::Model::ParallelMapV2PS???"??!?,??'?;@)PS???"??1?,??'?;@:Preprocessing2F
Iterator::Modeld;?O????!o@p?,?H@))?'?$???1QT??1?5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?{??Pk??!???}t\5@)s.?Ueߕ?1?2?@_?1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicevöE???! D/#?1-@)vöE???1 D/#?1-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate>"?D??!s+ًk?7@)E???V	??1???H?!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?V&?R???!???g?CI@)?0?*u?1??*I@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor5?l?/r?!?T??h@)5?l?/r?1?T??h@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap!?J͞?!(W???8@)?@??_?[?1H???Gc??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?54.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI`??s?S@Q?Y1b?7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	y?ߢ????y?ߢ????!y?ߢ????      ??!       "	u?V???u?V???!u?V???*      ??!       2	?<?r?}???<?r?}??!?<?r?}??:	,J	???@,J	???@!,J	???@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q`??s?S@y?Y1b?7@