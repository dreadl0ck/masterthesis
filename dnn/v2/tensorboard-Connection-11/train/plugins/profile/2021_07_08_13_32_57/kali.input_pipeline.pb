	c????@c????@!c????@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCc????@YiR
?=??1m˟o??Ab֋??h??I7?^??
@rEagerKernelExecute 0*	?(\???Z@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???????!:9?y??:@)?g?RD???17??v??3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceL???<??!?V???F3@)L???<??1?V???F3@:Preprocessing2U
Iterator::Model::ParallelMapV2???4cє?!O?S?2@)???4cє?1O?S?2@:Preprocessing2F
Iterator::Modelr?)????!$'??&B@)Y???-??1C?(S?h1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?0????!My?Ŧ?>@)J+???1JE`???&@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??W???!	???8@)??W???1	???8@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipA}˜.???!???~?O@)׆?q?&t?1?n?i?J@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap*Ral!ȡ?!k?t?#@@)?"??\?1?8>B???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?57.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI^??4}NS@Q??5,?6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	YiR
?=??YiR
?=??!YiR
?=??      ??!       "	m˟o??m˟o??!m˟o??*      ??!       2	b֋??h??b֋??h??!b֋??h??:	7?^??
@7?^??
@!7?^??
@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q^??4}NS@y??5,?6@