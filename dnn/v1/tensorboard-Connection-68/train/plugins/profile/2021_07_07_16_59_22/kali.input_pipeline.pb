	?????@?????@!?????@	?!?	?O???!?	?O??!?!?	?O??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?????@?"1A??1JC?B??A?	?????I?????J@Yy=???rEagerKernelExecute 0*	?p=
??t@2K
Iterator::Model::Map	8?*5{??!?u	LI?S@)5?l?/??1??DG?Q@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??מY??!?j????"@)???m??1i%?~cx@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?ؙB?5??!?IZs ?@)?ؙB?5??1?IZs ?@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice7l[?? ??!?i???V@)7l[?? ??1?i???V@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?4?Op??!E|?j?]$@)?????1???ed@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?^F??Ҳ?!?????5@)R~R???x?1?lZ??!??:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???5x?!r?:dE??)???5x?1r?:dE??:Preprocessing2F
Iterator::Model3d?????!?λ?S@)???3.l?1sH?ltt??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapL?
F%u??!S??!?%@)??hUM`?1?P?S?	??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?60.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?!?	?O??IA??j?S@Q??{?W4@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?"1A???"1A??!?"1A??      ??!       "	JC?B??JC?B??!JC?B??*      ??!       2	?	??????	?????!?	?????:	?????J@?????J@!?????J@B      ??!       J	y=???y=???!y=???R      ??!       Z	y=???y=???!y=???b      ??!       JGPUY?!?	?O??b qA??j?S@y??{?W4@