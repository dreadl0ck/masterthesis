	R???<X@R???<X@!R???<X@	???é??????é???!???é???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLR???<X@???!???18???i??AG?ŧ ??I??z?p@YM??E??rEagerKernelExecute 0*	43333CW@2U
Iterator::Model::ParallelMapV2?? %̔?!?]띴?5@)?? %̔?1?]띴?5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?a??4???!tcɨ1+:@)k?) Ɠ?1e?o???4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?? ?rh??!ɨ1+E2@)?? ?rh??1ɨ1+E2@:Preprocessing2F
Iterator::ModelYni5$???!x+?]?B@) ?d?F ??1%ה?/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate}\*????!?8??M\=@)?/???"??1 ??~.&@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorMۿ?Ҥt?!=?e?o?@)Mۿ?Ҥt?1=?e?o?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??_????!????.O@)???9]s?1}W??@@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?<?;k???!~?r30?@)_?Q?[?1?ڵ?I;??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?55.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???é???I???K#S@Q??*p7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???!??????!???!???!???      ??!       "	8???i??8???i??!8???i??*      ??!       2	G?ŧ ??G?ŧ ??!G?ŧ ??:	??z?p@??z?p@!??z?p@B      ??!       J	M??E??M??E??!M??E??R      ??!       Z	M??E??M??E??!M??E??b      ??!       JGPUY???é???b q???K#S@y??*p7@