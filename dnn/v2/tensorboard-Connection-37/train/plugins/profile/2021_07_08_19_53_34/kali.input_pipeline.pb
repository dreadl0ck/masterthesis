	v?TA@v?TA@!v?TA@	?3f?Օ@?3f?Օ@!?3f?Օ@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLv?TA@?E|'f???1?	?s3??A?1<??X??I?8?:???Y?v?
?ݶ?rEagerKernelExecute 0*	33333[q@2K
Iterator::Model::Map???????!,-?%?S@)???????1?M?i$?Q@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??dp????!??Do??"@)?0?*??1f??d?@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV23??bb???!???@@)3??bb???1???@@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??镲??!???8??@)??镲??1???8??@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateF????(??!j????!@)*??g\8??1??????@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensoro??\??v?!ԃz????)o??\??v?1ԃz????:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?Y????!d?Ӿ4@)YLl>?u?1\?]v\???:Preprocessing2F
Iterator::Model$???+??!?T?9K?S@)Qf?L2rf?1?ݓڒ??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap???????!??7	?"@)?n??S]?1.??g???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 28.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?44.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?3f?Օ@I	yW??sR@QcU5B?7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?E|'f????E|'f???!?E|'f???      ??!       "	?	?s3???	?s3??!?	?s3??*      ??!       2	?1<??X???1<??X??!?1<??X??:	?8?:????8?:???!?8?:???B      ??!       J	?v?
?ݶ??v?
?ݶ?!?v?
?ݶ?R      ??!       Z	?v?
?ݶ??v?
?ݶ?!?v?
?ݶ?b      ??!       JGPUY?3f?Օ@b q	yW??sR@ycU5B?7@