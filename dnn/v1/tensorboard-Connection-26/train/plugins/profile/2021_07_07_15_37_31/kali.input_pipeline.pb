	?M?t?@?M?t?@!?M?t?@	4A!r???4A!r???!4A!r???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?M?t?@eT?? ??1?pY??@??A????v???I+?? @Yr??V??rEagerKernelExecute 0*	23333?j@2K
Iterator::Model::Map??)Wx???!<|?x[?Q@)2=a????1?&?%	P@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?x@ٔ+??!??i???)@)?IF???1?M????$@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceLqU?wE??!??M??@)LqU?wE??1??M??@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2z?Cn???!d??\c@)z?Cn???1d??\c@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???9̗?!0F9???%@)%u?~?1?R???v@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zipm????ҭ?!?Y:?4;@)0?AC?w?1?X?c??@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??+H3v?!$?e?@@)??+H3v?1$?e?@@:Preprocessing2F
Iterator::Model?q??????!??i??2R@)^?/??f?11????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap???????!7?S*6w'@)!?J?^?1v??QY??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?56.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no94A!r???I?G.??R@Qb̘?M?6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	eT?? ??eT?? ??!eT?? ??      ??!       "	?pY??@???pY??@??!?pY??@??*      ??!       2	????v???????v???!????v???:	+?? @+?? @!+?? @B      ??!       J	r??V??r??V??!r??V??R      ??!       Z	r??V??r??V??!r??V??b      ??!       JGPUY4A!r???b q?G.??R@yb̘?M?6@