	!ɬ???@!ɬ???@!!ɬ???@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC!ɬ???@ݵ?|г??1?Ye??>??AWv???;??I@?0`?%@rEagerKernelExecute 0*	?z?G?m@2K
Iterator::Model::Map?Ǻ????!S?/-W?R@)???dp???1?x?P@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?E???Ԙ?!j?=?u$@)M?J???1녆I?~ @:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?r?]????!?G?R[@)?r?]????1?G?R[@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?aod??!w????
@)?aod??1w????
@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?CV???!?bX?^&@)
ףp=
??18޼r??@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip??0_^???!6_???N8@)?????w?1_Z?*?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorU???N@s?!??w????)U???N@s?1??w????:Preprocessing2F
Iterator::Model??<???!2hΉG?R@)?	.V?`j?1?7?'???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap??x?@e??!k????e'@)t^c???Z?1:4??#??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?66.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?}??T@Q??:?1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	ݵ?|г??ݵ?|г??!ݵ?|г??      ??!       "	?Ye??>???Ye??>??!?Ye??>??*      ??!       2	Wv???;??Wv???;??!Wv???;??:	@?0`?%@@?0`?%@!@?0`?%@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?}??T@y??:?1@