	g|_\?@g|_\?@!g|_\?@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCg|_\?@lˀ??l??1!W?Y
??Adʇ?j???I?W?\?
@rEagerKernelExecute 0*	(\???xX@2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?D??b??!_?}/S9@)?D??b??1_?}/S9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?\?].???!?Z??"?;@)
ףp=
??1u??'?6@:Preprocessing2U
Iterator::Model::ParallelMapV2	m9?⪒?!??Dy?2@)	m9?⪒?1??Dy?2@:Preprocessing2F
Iterator::Model?X?O0??!@Î1?>@)
ףp=
??1u??'?&@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?n?ꐛ??!#?r͐A@)a2U0*???1??Xl%?#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?'?XQ???!0O???xQ@)M?O?t?1?o?	??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorr???_s?!????S@)r???_s?1????S@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapϠ???!??RtB@)?"??\?1	??v?p??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?57.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIc?3(??S@Qsb1_'?4@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	lˀ??l??lˀ??l??!lˀ??l??      ??!       "	!W?Y
??!W?Y
??!!W?Y
??*      ??!       2	dʇ?j???dʇ?j???!dʇ?j???:	?W?\?
@?W?\?
@!?W?\?
@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qc?3(??S@ysb1_'?4@