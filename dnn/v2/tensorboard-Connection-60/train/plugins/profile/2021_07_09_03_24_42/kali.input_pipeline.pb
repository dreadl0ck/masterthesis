	1??c80@1??c80@!1??c80@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC1??c80@?-z(??1P?Lۿ?@A?߄B??Ic	kc??%@rEagerKernelExecute 0*	fffff?Z@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?!7????!? j? j:@)+??Η?1Hl?Gl?5@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?\?????!????2@)?\?????1????2@:Preprocessing2U
Iterator::Model::ParallelMapV2??? ?X??!Q??P??2@)??? ?X??1Q??P??2@:Preprocessing2F
Iterator::ModelU???N@??!??????A@)?ߡ(?'??1??????0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?S ?gР?!絩浩>@)?'I?L???10y0y'@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?n??ʱ?!? 9? 9P@)?҇.?oy?1?z1?z1@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorMۿ?Ҥt?!??????@)Mۿ?Ҥt?1??????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?Q?????!?W?W@@)??+ٱa?1?k"?k" @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 9.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?66.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?????S@Q??I\E?7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?-z(???-z(??!?-z(??      ??!       "	P?Lۿ?@P?Lۿ?@!P?Lۿ?@*      ??!       2	?߄B???߄B??!?߄B??:	c	kc??%@c	kc??%@!c	kc??%@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?????S@y??I\E?7@