	??E??@??E??@!??E??@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC??E??@??ao??1?'?8???A??????I??	??@rEagerKernelExecute 0*	gffff?m@2K
Iterator::Model::Map????z??!޵D iR@)?!??u???1@?e??Q@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??????!j5??? *@)c???&???1Y?Ýe?%@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??#0???!?_i5??@)??#0???1?_i5??@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2????????!???m ?@)????????1???m ?@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?D?????!	??s?"@)??ek}???1??dW$@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorf?ʉvu?!???X??@)f?ʉvu?1???X??@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip???խ??!?U?a!9@)??6?ُt?1y?5?? @:Preprocessing2F
Iterator::Model?l?/???!???'??R@)G?ŧ h?1?*??	???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapR???Q??!?2
??#@)oӟ?HY?1X???X???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?57.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI	nr]S@Q???G6?6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??ao????ao??!??ao??      ??!       "	?'?8????'?8???!?'?8???*      ??!       2	????????????!??????:	??	??@??	??@!??	??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q	nr]S@y???G6?6@