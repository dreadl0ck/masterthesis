	>?
Y?@>?
Y?@!>?
Y?@	P^;?U??P^;?U??!P^;?U??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL>?
Y?@F%u????1?9τ???A?H?<???I/??"j?@Y??ο]???rEagerKernelExecute 0*	??Q?iq@2K
Iterator::Model::Map?+???d??!/Q??4S@)p_?Q??1???63KO@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2<1??PN??!eB?Wy,@)<1??PN??1eB?Wy,@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??H.?!??!??ˬ?l$@)?????1|Eǌ?? @:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?? v???!a8?5
Y@)?? v???1a8?5
Y@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateę_????![?b?Z?!@)e?X???1?t?U?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?Zd;??!_?????5@)???|~x?1G?RXe,@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorƢ??dpt?!?I# !???)Ƣ??dpt?1?I# !???:Preprocessing2F
Iterator::Model??KqU???!(????S@)?=\r?)m?1]?:?r??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?8?*5??!???lt#@)??m?2[?1}~????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?64.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9P^;?U??I?-?ÁqT@Q
n?K?1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	F%u????F%u????!F%u????      ??!       "	?9τ????9τ???!?9τ???*      ??!       2	?H?<????H?<???!?H?<???:	/??"j?@/??"j?@!/??"j?@B      ??!       J	??ο]?????ο]???!??ο]???R      ??!       Z	??ο]?????ο]???!??ο]???b      ??!       JGPUYP^;?U??b q?-?ÁqT@y
n?K?1@