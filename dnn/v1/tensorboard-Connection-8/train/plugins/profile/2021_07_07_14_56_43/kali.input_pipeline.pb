	1?q??@1?q??@!1?q??@	[	@[	@![	@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL1?q??@????????1pC?׼???Al#???I????D
@Y??^EF??rEagerKernelExecute 0*	??????Z@2U
Iterator::Model::ParallelMapV2?&1???!???|>?7@)?&1???1???|>?7@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??̒ 5??!?O/3@)??̒ 5??1?O/3@:Preprocessing2F
Iterator::Modelg?CV??!?]??E@)??6?ُ??15????2@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?(?A&??!b)?w?6@)1%??e??1R!	??s2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??????!(ߺ??<@)?ُ?a??1!?S1?W#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip;ǀ?????!|??~l?L@)f?ʉvu?1"???j@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??7???r?!@ @)??7???r?1@ @:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap3d?????!????7>@)?*5{?X?1?^ ?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?55.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9[	@Ido??}R@Q-j~??6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????????????????!????????      ??!       "	pC?׼???pC?׼???!pC?׼???*      ??!       2	l#???l#???!l#???:	????D
@????D
@!????D
@B      ??!       J	??^EF????^EF??!??^EF??R      ??!       Z	??^EF????^EF??!??^EF??b      ??!       JGPUY[	@b qdo??}R@y-j~??6@