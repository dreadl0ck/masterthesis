	?%:?,R@?%:?,R@!?%:?,R@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?%:?,R@Y?8??-??1?7???Aa??+e??IC?_?+W@rEagerKernelExecute 0*	)\???R@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatQ??C?R??!-?P(:@)???#0??1?3??l?5@:Preprocessing2U
Iterator::Model::ParallelMapV2`???Y??! ?rw?4@)`???Y??1 ?rw?4@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateJ+???!???T?@@)?
F%u??1?U?ʚ1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??0?*??!W?&?i[0@)??0?*??1W?&?i[0@:Preprocessing2F
Iterator::Model?ׁsF???!?v??Ȑ>@)? ?X4?}?1???[$@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???e???!Z"D??[Q@)??N?z1t?1%d???U@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensoroӟ?Hi?!?????@)oӟ?Hi?1?????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???????!?A??8B@)?n??S]?1?Qu???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?57.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI'??] ?S@Qc????4@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	Y?8??-??Y?8??-??!Y?8??-??      ??!       "	?7????7???!?7???*      ??!       2	a??+e??a??+e??!a??+e??:	C?_?+W@C?_?+W@!C?_?+W@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q'??] ?S@yc????4@