	?0ҋ??@?0ҋ??@!?0ҋ??@	8?2?n @8?2?n @!8?2?n @"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?0ҋ??@W>???n??1?7L4H???A??C?b??I?wF[?4@Y]?jJ???rEagerKernelExecute 0*	Q????r@2K
Iterator::Model::Map??p?q???!???追R@)rm??o??1???}?JQ@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceh˹W???!?NfkXY#@)h˹W???1?NfkXY#@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatW?I?_??!΋?v ?!@)bJ$??(??1X?????@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?RD?U???!Ű?63@)?RD?U???1Ű?63@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatez?(???!k??V(@)2??%??~?1???^?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?_YiR
??!3[??:?7@)0?AC?w?1`pB???:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??x@?t?!m]??E??)??x@?t?1m]??E??:Preprocessing2F
Iterator::Model?J?4??!4)OM?S@)n?2d?q?1ܦ?Y???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapj???v???!?????)@)?=\r?)]?1 r?v??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?62.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no97?2?n @Il??~??S@Q?O?^~?2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	W>???n??W>???n??!W>???n??      ??!       "	?7L4H????7L4H???!?7L4H???*      ??!       2	??C?b????C?b??!??C?b??:	?wF[?4@?wF[?4@!?wF[?4@B      ??!       J	]?jJ???]?jJ???!]?jJ???R      ??!       Z	]?jJ???]?jJ???!]?jJ???b      ??!       JGPUY7?2?n @b ql??~??S@y?O?^~?2@