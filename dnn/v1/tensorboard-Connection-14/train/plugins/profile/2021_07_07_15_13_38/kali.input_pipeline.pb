	??cw??#@??cw??#@!??cw??#@	fC?cJ??fC?cJ??!fC?cJ??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??cw??#@8gDio??1̸??????Aw???閝?IxG?j?o@Y1?*????rEagerKernelExecute 0*	I?z?gk@2K
Iterator::Model::Map??????!?@??Q@)???N?z??1???$O@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateDԷ????!?Pܛ_?0@)??????1?˭ߓR&@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?R\U?]??!!?dy?@)?R\U?]??1!?dy?@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?Op????!9Q?? @)???#0??1}?\?X?@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?r߉??!??V?@)?r߉??1??V?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::ZipX??j??!?????<@)G?ŧ x?1MM!?	b@:Preprocessing2F
Iterator::Model???????!?X???Q@)?~j?t?h?1??E????:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?m?f?!?17??)?m?f?1?17??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapӇ.?o???!]?u]?u1@)?N^?U?1?03????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 11.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?72.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9fC?cJ??I?x?9-%U@Qӣ%T?+@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	8gDio??8gDio??!8gDio??      ??!       "	̸??????̸??????!̸??????*      ??!       2	w???閝?w???閝?!w???閝?:	xG?j?o@xG?j?o@!xG?j?o@B      ??!       J	1?*????1?*????!1?*????R      ??!       Z	1?*????1?*????!1?*????b      ??!       JGPUYfC?cJ??b q?x?9-%U@yӣ%T?+@