	????ʯ@????ʯ@!????ʯ@	?{E7@?{E7@!?{E7@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL????ʯ@????J??1EKO???A^??_>??I?5[y?
@Y-??x>??rEagerKernelExecute 0*	q=
ף4p@2K
Iterator::Model::Map???a???!??M??wR@)??/?$??1V?:L?P@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?`7l[???!?W??D#@)
p??1?E?V??@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice<?.9???!hw?DB?@)<?.9???1hw?DB?@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2@ޫV&???!*$)???@)@ޫV&???1*$)???@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?ŊLà?!??_m?@)@)?(??0??1?5???@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zipe?z?Fw??!4??9c?8@)????s?1??@nY???:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor5?l?/r?!`??e?e??)5?l?/r?1`??e?e??:Preprocessing2F
Iterator::ModelM???????!sƜ1g?R@)??h:;l?1?vϓ]*??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?5v?ꭡ?!w[P?_?*@)?n??S]?1?M?Q??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?53.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?{E7@I?6?c?fR@Q?\8.yW6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????J??????J??!????J??      ??!       "	EKO???EKO???!EKO???*      ??!       2	^??_>??^??_>??!^??_>??:	?5[y?
@?5[y?
@!?5[y?
@B      ??!       J	-??x>??-??x>??!-??x>??R      ??!       Z	-??x>??-??x>??!-??x>??b      ??!       JGPUY?{E7@b q?6?c?fR@y?\8.yW6@