	?>??@?>??@!?>??@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?>??@P?Lۿ2??1???Du??A?G??Q??I??hU@rEagerKernelExecute 0*	
ףp=?V@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat5)?^Ҙ?!???m??:@)£?#????1?iG?\5@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice5?l?/??!Q<6~*?3@)5?l?/??1Q<6~*?3@:Preprocessing2U
Iterator::Model::ParallelMapV2?n/i?֑?!v?,Fl)3@)?n/i?֑?1v?,Fl)3@:Preprocessing2F
Iterator::ModelTol?`??!y?LG??B@)&p?n????1|BmH?+2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate='?o|???!??Ik
?;@)??<?~?10A'ڿ? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip%̴?++??!???KUO@)?????gv?1y?ɬX@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???"?s?!6ږ15@)???"?s?16ږ15@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???????!f?5?V?=@)?x#??_?1??_gc@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?63.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIHzL)hT@Q??Z_?3@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	P?Lۿ2??P?Lۿ2??!P?Lۿ2??      ??!       "	???Du?????Du??!???Du??*      ??!       2	?G??Q???G??Q??!?G??Q??:	??hU@??hU@!??hU@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qHzL)hT@y??Z_?3@