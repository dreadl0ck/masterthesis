	?L?T?@?L?T?@!?L?T?@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?L?T?@????b)??1G??tq??A4??s??I?XD@rEagerKernelExecute 0*???Q?Y@)      =2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??q?@H??!?6YF~5@)??q?@H??1?6YF~5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??ޫV&??!?Z?wڧ:@)0L?
F%??1?m? ?4@:Preprocessing2U
Iterator::Model::ParallelMapV2??"???!Q?:?2@)??"???1Q?:?2@:Preprocessing2F
Iterator::Model?? ?rh??!Ͳ???{@@)CV?zNz??1???&??-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate~5????!'????@@)??9]??1
??#6?)@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor1?߄B|?!??7\??@)1?߄B|?1??7\??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?',񀲱?!?&??
?P@)???խ?s?1?3? ?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapY?? ޢ?!????A@)O;?5Y?^?1T?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?55.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?Qx%??R@Qֹj??8@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????b)??????b)??!????b)??      ??!       "	G??tq??G??tq??!G??tq??*      ??!       2	4??s??4??s??!4??s??:	?XD@?XD@!?XD@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?Qx%??R@yֹj??8@