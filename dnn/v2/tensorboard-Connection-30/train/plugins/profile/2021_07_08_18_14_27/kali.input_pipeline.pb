	?\?@?\?@!?\?@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?\?@???Ŋ???1?QI??&??Al$	?P??I'0??m??rEagerKernelExecute 0*(\???HZ@)      =2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?ʉv??!>?d??@@)K?=?U??1#??"?=@:Preprocessing2U
Iterator::Model::ParallelMapV2Z??????!t܉)?"4@)Z??????1t܉)?"4@:Preprocessing2F
Iterator::Model?ݓ??Z??!o??:??A@)֨?ht??1פϘN?/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?׻???!B??,@)?׻???1B??,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateę_????!u?R5?7@)j0?GĄ?1?G\??I#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?o??1=??!H??bP@)??_?Lu?1̄QF|?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??1ZGUs?!fAy???@)??1ZGUs?1fAy???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap-σ??v??!s?T?C?9@)?VC?K_?1??????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 36.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?38.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI0B????R@QB?B?yd8@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???Ŋ??????Ŋ???!???Ŋ???      ??!       "	?QI??&???QI??&??!?QI??&??*      ??!       2	l$	?P??l$	?P??!l$	?P??:	'0??m??'0??m??!'0??m??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q0B????R@yB?B?yd8@