	B?V?9?@B?V?9?@!B?V?9?@	??@??@!??@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLB?V?9?@&䃞ͪ??1?-???&??Az5@i?Q??I????@Y?J?*n??rEagerKernelExecute 0*	    `m@2K
Iterator::Model::Map&S????!br1??R@)?JY?8???1\AL? ?M@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?l??????!????F}/@)?l??????1????F}/@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?????ʘ?!?-z??$@)b???I??1???? @:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??m??!?/|*Kq@)??m??1?/|*Kq@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatecb?qm???!?!c?]~$@)?X?O0~?18'?h?	@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip>??m??!??"?7@)?GĔH?w?1"c?]~?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor/n??r?!x6?;???)/n??r?1x6?;???:Preprocessing2F
Iterator::ModelE?$]3???!_??H?S@)N^??i?1.????O??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap???b('??!???u?%@)?c#??W?1?ˏt???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 23.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?51.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??@I?@ӗ??R@QAh??4@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	&䃞ͪ??&䃞ͪ??!&䃞ͪ??      ??!       "	?-???&???-???&??!?-???&??*      ??!       2	z5@i?Q??z5@i?Q??!z5@i?Q??:	????@????@!????@B      ??!       J	?J?*n???J?*n??!?J?*n??R      ??!       Z	?J?*n???J?*n??!?J?*n??b      ??!       JGPUY??@b q?@ӗ??R@yAh??4@