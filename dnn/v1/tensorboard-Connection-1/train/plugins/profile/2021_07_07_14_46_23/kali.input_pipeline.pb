	?9z??@?9z??@!?9z??@	v?sQ8?	@v?sQ8?	@!v?sQ8?	@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?9z??@ ~?{????1mS<.?E??A?? Z+??IYL?1@YVn2???rEagerKernelExecute 0*	??????^@2U
Iterator::Model::ParallelMapV2?!q????!??b?#7@)?!q????1??b?#7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??U+??!??+f9?7@)9b->???1af??۴3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?Jvl???!????nl1@)?Jvl???1????nl1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??&k?C??!?Â??"@@)/4?i????1?
?~??-@:Preprocessing2F
Iterator::Model????b(??!?@$KpB@)7?[ A??1-???y+@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?j?ѳ?!f??۴?O@)A??h:;y?1????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??_?Lu?!?䰝u?@)??_?Lu?1?䰝u?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?(?r??!?[?s?A@)?3??k?b?1???p"??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 17.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?60.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9v?sQ8?	@I$?WL?S@Q`睙G?2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	 ~?{???? ~?{????! ~?{????      ??!       "	mS<.?E??mS<.?E??!mS<.?E??*      ??!       2	?? Z+???? Z+??!?? Z+??:	YL?1@YL?1@!YL?1@B      ??!       J	Vn2???Vn2???!Vn2???R      ??!       Z	Vn2???Vn2???!Vn2???b      ??!       JGPUYv?sQ8?	@b q$?WL?S@y`睙G?2@