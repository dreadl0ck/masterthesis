	?Д?~H!@?Д?~H!@!?Д?~H!@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?Д?~H!@3?68???1????Dm??AF????(??I!?'?>?@rEagerKernelExecute 0*	?p=
??n@2K
Iterator::Model::Map??7??d??!??(?Q@)v28J^???1x?kO@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?$???7??!w!?0?%@)V????_??1j?F?5?!@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2^?o%;??!C,%?!@)^?o%;??1C,%?!@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatei??Q???!?E????*@)QN??????1??~?\?@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???3.??!???!WQ@)???3.??1???!WQ@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?Ry;?i??!?+?r??;@)??9̗w?1Ί??B?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorr???_s?!j0??ׯ??)r???_s?1j0??ׯ??:Preprocessing2F
Iterator::Model?e?c]???!?M??R@)?<,Ԛ?m?1]?-????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapj>"?D??!f?̆i?,@)?x?c?1??D?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 14.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?69.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?$r??T@Q?gm7Z80@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	3?68???3?68???!3?68???      ??!       "	????Dm??????Dm??!????Dm??*      ??!       2	F????(??F????(??!F????(??:	!?'?>?@!?'?>?@!!?'?>?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?$r??T@y?gm7Z80@