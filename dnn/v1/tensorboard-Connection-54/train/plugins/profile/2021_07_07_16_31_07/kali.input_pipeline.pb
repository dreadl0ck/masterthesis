	?b?D?@?b?D?@!?b?D?@	A'?
??A'?
??!A'?
??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?b?D?@?Vm??1?ݮ?????A?~?????I3?<֌@Y	pz?ǭ?rEagerKernelExecute 0*	dffff"t@2K
Iterator::Model::Map????^???!?/s??BT@)??:??T??1???-?cR@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2???J???!`o????@)???J???1`o????@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat???N]??!???@)?0_^?}??1=?2w?@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?P??C???!?6
}?@)?P??C???1?6
}?@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate_?2?????!?3??7?@)???QI}?1/,??u?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zipq=
ףp??!?1??L?1@)؞Y??v?1 AK?(w??:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?kC?8s?!?'?#???)?kC?8s?1?'?#???:Preprocessing2F
Iterator::ModelǺ?????!???̬?T@)?n??Sm?1z? F????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap_?Qڛ?!??c??? @) ????]?1.߭??-??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?53.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9A'?
??IX???R@Q?. ??8@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?Vm???Vm??!?Vm??      ??!       "	?ݮ??????ݮ?????!?ݮ?????*      ??!       2	?~??????~?????!?~?????:	3?<֌@3?<֌@!3?<֌@B      ??!       J		pz?ǭ?	pz?ǭ?!	pz?ǭ?R      ??!       Z		pz?ǭ?	pz?ǭ?!	pz?ǭ?b      ??!       JGPUYA'?
??b qX???R@y?. ??8@