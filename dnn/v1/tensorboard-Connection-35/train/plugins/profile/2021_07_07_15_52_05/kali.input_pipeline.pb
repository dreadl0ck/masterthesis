	/?
Ҭ@/?
Ҭ@!/?
Ҭ@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC/?
Ҭ@U???)??1V??#???Ap%;6???ID?b*?@rEagerKernelExecute 0*	     0[@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatvq?-??!h??o?=@)іs)?*??1?S?9e8@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?/?'??!FX?i??2@)?/?'??1FX?i??2@:Preprocessing2U
Iterator::Model::ParallelMapV2?????ڐ?!W??qE.@)?????ڐ?1W??qE.@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???v?Ӣ?!?}.??@@)\*?????16G?Xs?-@:Preprocessing2F
Iterator::Model??ܵ?|??!C??:??=@)????%??1o'??v?,@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?@??ǘ??!/?I??Q@)I?2??v?1??Hl??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorj0?G?t?!W_*h??@)j0?G?t?1W_*h??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap׆?q?&??!y?!??B@)+~??7e?1??0?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?64.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI????bT@Q_?$??w2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	U???)??U???)??!U???)??      ??!       "	V??#???V??#???!V??#???*      ??!       2	p%;6???p%;6???!p%;6???:	D?b*?@D?b*?@!D?b*?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q????bT@y_?$??w2@