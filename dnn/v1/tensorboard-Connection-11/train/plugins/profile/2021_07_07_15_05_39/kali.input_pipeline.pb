	_D?1u@_D?1u@!_D?1u@	?2-?aE@?2-?aE@!?2-?aE@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL_D?1u@?F??1???1a3?ٲ??A??ͪ?Ֆ?I Q?@Y????C???rEagerKernelExecute 0*	??Q?1v@2K
Iterator::Model::Map)yu????!??;??S@){Ic?????1K??:?UR@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?2??Y??!??f?@)?2??Y??1??f?@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat $?????!??`Is@)Ve?????1t`ZSM@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2??"?-???! j&??@)??"?-???1 j&??@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate3???VC??!Ff??$@)?2??Y??1??f?
@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip	?c?Z??!lV??u14@))?'?$?z?1??ut????:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor+????r?!???֗??)+????r?1???֗??:Preprocessing2F
Iterator::Model?????"??!d*ؖ??S@);?O??nr?1???G??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap????ׁ??!V??u%@)???P?c?1??"O`???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?58.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?2-?aE@I?????R@Q%??q?4@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?F??1????F??1???!?F??1???      ??!       "	a3?ٲ??a3?ٲ??!a3?ٲ??*      ??!       2	??ͪ?Ֆ???ͪ?Ֆ?!??ͪ?Ֆ?:	 Q?@ Q?@! Q?@B      ??!       J	????C???????C???!????C???R      ??!       Z	????C???????C???!????C???b      ??!       JGPUY?2-?aE@b q?????R@y%??q?4@