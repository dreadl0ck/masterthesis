	?@j7@?@j7@!?@j7@	?ٷ?????ٷ????!?ٷ????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?@j7@???1~??ŉ/??A?^?D??IG?(?@Yt??z?Ѧ?rEagerKernelExecute 0*	{?G?jV@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatB`??"ۙ?!0}i?(<@)Ih˹W??1,? 7?=7@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice+5{???!A(\??3@)+5{???1A(\??3@:Preprocessing2U
Iterator::Model::ParallelMapV2?o%;6??!V??t?2@)?o%;6??1V??t?2@:Preprocessing2F
Iterator::Model?ȓ?k&??!?͌dR?@@)F???jH??1?  ?D?.@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate_A??h:??!?L8T6?=@)j>"?D??1?HL?)?#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?t?V??!???քP@)M?O?t?1|&dT??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??g\8r?!?Oq??@)??g\8r?1?Oq??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?u?????!>(\|$@@)??1ZGUc?1??? @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 17.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?60.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?ٷ????I???Qo?S@QH?{C5@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??????!???      ??!       "	~??ŉ/??~??ŉ/??!~??ŉ/??*      ??!       2	?^?D???^?D??!?^?D??:	G?(?@G?(?@!G?(?@B      ??!       J	t??z?Ѧ?t??z?Ѧ?!t??z?Ѧ?R      ??!       Z	t??z?Ѧ?t??z?Ѧ?!t??z?Ѧ?b      ??!       JGPUY?ٷ????b q???Qo?S@yH?{C5@