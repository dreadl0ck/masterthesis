	?Ov3k+@?Ov3k+@!?Ov3k+@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?Ov3k+@????#??1?o%;?@A-y??I{؜?? @rEagerKernelExecute 0*	ףp=
Ok@2K
Iterator::Model::Map?kC?8??!??3?(nQ@)>?????1e??P@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?x?@e???!?|??)@)A??ǘ???13\b?R$@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???I???! ?F?? @)???I???1 ?F?? @:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?[[%??!??K$?@)?[[%??1??K$?@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?͍?	K??!.Z??IK)@)v?ꭁ???1?r????@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?q?Z|
??!6??h?<@)??@???x?1??:q'@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?ڧ?1u?!4???@)?ڧ?1u?14???@:Preprocessing2F
Iterator::Model??1????!???e?Q@)?{?l?1E??3@???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap ??????!j???*@)F%u?[?1?3?(+??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 9.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?62.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?`???Q@Q?}?o? <@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????#??????#??!????#??      ??!       "	?o%;?@?o%;?@!?o%;?@*      ??!       2	-y??-y??!-y??:	{؜?? @{؜?? @!{؜?? @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?`???Q@y?}?o? <@