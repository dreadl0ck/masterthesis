	??Q?5@??Q?5@!??Q?5@	Y?9?)??Y?9?)??!Y?9?)??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??Q?5@(?4????1qr?CQ ??A???.Q???I?mēݬ
@Y ????m??rEagerKernelExecute 0*	??Q??n@2K
Iterator::Model::Map?ME*?-??!.???+QS@)f1???6??1p?#?^&P@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2䠄????!??dV)@)䠄????1??dV)@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??y?)??!$?W9?$@)L???<??1g??? @:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?׻?ޫ??!?J;O@)?׻?ޫ??1?J;O@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?2??bb??!$??q?@)??W???1]h??Ը	@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip??y?]???!ޟ???G5@)???9?w?1????i@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor????s?!?ͧLL{??)????s?1?ͧLL{??:Preprocessing2F
Iterator::ModelR?8?ߡ??!	????S@)?ZӼ?m?1??Cm!<??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?hW!?'??!?L?8? @)?[[%X\?1ռ8U???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?55.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9 Y?9?)??IM??
??R@Q<??1??6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	(?4????(?4????!(?4????      ??!       "	qr?CQ ??qr?CQ ??!qr?CQ ??*      ??!       2	???.Q??????.Q???!???.Q???:	?mēݬ
@?mēݬ
@!?mēݬ
@B      ??!       J	 ????m?? ????m??! ????m??R      ??!       Z	 ????m?? ????m??! ????m??b      ??!       JGPUY Y?9?)??b qM??
??R@y<??1??6@