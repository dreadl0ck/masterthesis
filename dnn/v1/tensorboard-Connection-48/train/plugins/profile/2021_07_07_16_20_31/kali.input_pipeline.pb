	4/??w<@4/??w<@!4/??w<@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC4/??w<@??????1?e?c]??A
/??$??I4??7??@rEagerKernelExecute 0*	?G?zN[@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??ԕ????!?"??/?9@)?G?`๗?1?l3??65@:Preprocessing2F
Iterator::Model?/?'??!4?B??B@)˹W?}??1A?? 5@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??@?ȓ?!l??f?1@)??@?ȓ?1l??f?1@:Preprocessing2U
Iterator::Model::ParallelMapV2?a?????!(
???0@)?a?????1(
???0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?8??m4??!????k?<@)??x@??1?@)P
?&@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?4?Op??!??2?L/O@)?G??|v?1??l0@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??ZӼ?t?!??*???@)??ZӼ?t?1??*???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapHĔH????!?Yw֝u?@)??+H3f?1??=f??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?66.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI???Rm?T@Q?YԵJ?1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????????????!??????      ??!       "	?e?c]???e?c]??!?e?c]??*      ??!       2	
/??$??
/??$??!
/??$??:	4??7??@4??7??@!4??7??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q???Rm?T@y?YԵJ?1@