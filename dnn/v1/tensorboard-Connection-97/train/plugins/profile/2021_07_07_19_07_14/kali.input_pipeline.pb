	?????@?????@!?????@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?????@??^?2a??1A?v??Axρ???I?pY?? @rEagerKernelExecute 0*	?p=
?p@2K
Iterator::Model::Map͒ 5?l??!ɳ?؞RS@)?z?Fw??1j?Aze?Q@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceۅ?:????!\?ʹ?x@)ۅ?:????1\?ʹ?x@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatk?C4????!R??#??"@)Y?n?͓?1^]?2@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2???s????!???㕳@)???s????1???㕳@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::ZipW[??재?!??8w?5@)?-???=v?1^?D? @:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorHP?s?r?!?X?????)HP?s?r?1?X?????:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate????+??!:??!#@)]?????q?1^f] %??:Preprocessing2F
Iterator::Model???.Q???!ۗ?1??S@)׆?q?&d?1?򽬡??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapіs)?*??!D??K??$@)?q????_?1? ?2?G??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 17.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?59.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??u6?^S@Q̸(&??6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??^?2a????^?2a??!??^?2a??      ??!       "	A?v??A?v??!A?v??*      ??!       2	xρ???xρ???!xρ???:	?pY?? @?pY?? @!?pY?? @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??u6?^S@y̸(&??6@