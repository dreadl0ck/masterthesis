	ެ??R!@ެ??R!@!ެ??R!@	E`??>???E`??>???!E`??>???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLެ??R!@4K?Բ??13??(? @A*6?u?!??IvS?k%@Yfh<?y??rEagerKernelExecute 0*	?(\?\@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat[%XΜ?!?=? ?8@)?{???1???G?3@:Preprocessing2U
Iterator::Model::ParallelMapV24K?Բ??!]<?sN?2@)4K?Բ??1]<?sN?2@:Preprocessing2F
Iterator::Model???1殥?!#3b???B@)????????1?)????2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??? ?X??!?YO?`1@)??? ?X??1?YO?`1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateL??1%??!?wJ}??>@)P?c*???1???[<+@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip ????m??!?̝L{O@)N^??y?1L??L?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???"?v?!??es@)???"?v?1??es@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapU???N@??!??w\3q@@)??+ٱa?1S??9??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 13.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?60.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9D`??>???I??Ў?R@QQ???bq8@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	4K?Բ??4K?Բ??!4K?Բ??      ??!       "	3??(? @3??(? @!3??(? @*      ??!       2	*6?u?!??*6?u?!??!*6?u?!??:	vS?k%@vS?k%@!vS?k%@B      ??!       J	fh<?y??fh<?y??!fh<?y??R      ??!       Z	fh<?y??fh<?y??!fh<?y??b      ??!       JGPUYD`??>???b q??Ў?R@yQ???bq8@