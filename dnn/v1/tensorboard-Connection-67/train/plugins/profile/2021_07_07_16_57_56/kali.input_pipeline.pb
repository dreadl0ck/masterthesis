	?b?0?# @?b?0?# @!?b?0?# @      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?b?0?# @t??gy???1???dH??Aq??]P??ICV?z>@rEagerKernelExecute 0*	<
ףp?n@2K
Iterator::Model::MapjM??S??!0Ḫ?QS@)??d?`T??1"4?T?Q@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?.񝘕?!sM/?&!@)2U0*???1?y&i?@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?q??????!??_?_@)?q??????1??_?_@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceO;?5Y???!?2?GU@)O;?5Y???1?2?GU@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?(yu???!????0?#@)r???_??1???L4?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?f??v?!1?芾?@)?f??v?11?芾?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zipxz?,C??!?^?S	?5@)s.?Ue?u?1x0??_@:Preprocessing2F
Iterator::Model????=???!O(???S@)?c#??g?1??Q????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapcz?(??!V?	?g?%@)?J?4a?1???rS??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?65.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?YO??T@Q?ۘ??A1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	t??gy???t??gy???!t??gy???      ??!       "	???dH?????dH??!???dH??*      ??!       2	q??]P??q??]P??!q??]P??:	CV?z>@CV?z>@!CV?z>@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?YO??T@y?ۘ??A1@