	j???@j???@!j???@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCj???@??B??1F%u????A?p>????I%??ek@rEagerKernelExecute 0*	?????\Z@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?[w?T???!?&???k:@)?e?I)???1l???65@:Preprocessing2F
Iterator::Model?f?????!??ڂ??C@)??JY?8??1A????4@:Preprocessing2U
Iterator::Model::ParallelMapV20?[w???!q??3g3@)0?[w???1q??3g3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice[?? ????!? ?fp*@)[?? ????1? ?fp*@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatex$(~???!?????7@)??n/i???1ζv??$@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipk?) ?3??!'?%}mN@)y?ѩ+?1?????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?G??|v?!3Mԇ5?@)?G??|v?13Mԇ5?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?鲘?|??!&> ?a:@)??v?ӂg?1`\?j??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?65.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI2???9mT@Q8??K2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??B????B??!??B??      ??!       "	F%u????F%u????!F%u????*      ??!       2	?p>?????p>????!?p>????:	%??ek@%??ek@!%??ek@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q2???9mT@y8??K2@