	.s???@.s???@!.s???@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC.s???@K?.?????1ҋ??*@??A*?-9(??Ie????@rEagerKernelExecute 0*	??Q?UV@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat£?#֢?!?????D@)6Y??ѝ?1ᱭגL@@:Preprocessing2U
Iterator::Model::ParallelMapV2???????!?e?;1?-@)???????1?e?;1?-@:Preprocessing2F
Iterator::ModelRD?U????!?^??;@)?[[%??1?)??e*@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?KTol??!??_r5k'@)?KTol??1??_r5k'@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?&S???!Y???_4@)???m???1)?Ҩ9T!@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?????j?!ֶ??,!@)?????j?1ֶ??,!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipҩ+??y??!LO]?	R@)d?????}?1??\??5 @:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???4cє?!?5)? ?6@)P6?
?ra?1??dI@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 17.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?64.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??w2zT@Q??!62@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	K?.?????K?.?????!K?.?????      ??!       "	ҋ??*@??ҋ??*@??!ҋ??*@??*      ??!       2	*?-9(??*?-9(??!*?-9(??:	e????@e????@!e????@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??w2zT@y??!62@