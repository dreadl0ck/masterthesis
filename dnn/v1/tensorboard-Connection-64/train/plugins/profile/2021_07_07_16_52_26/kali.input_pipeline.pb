	w??@w??@!w??@	???t???????t????!???t????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLw??@?{,G???1??]?C??A7???????IGW??:{	@Y:?`???t?rEagerKernelExecute 0*	fffff?j@2K
Iterator::Model::Map*???P??!?Ĥ)z?R@)(D?!T???1????7P@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?//?>:??! X?~#@)?//?>:??1 X?~#@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?4?8EG??!??؈?? @)?4?8EG??1??؈?? @:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat????h??!KD?c#@)???????1???S8 @:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate$0??{??!??ߑ|{&@)5)?^?x?1q$??@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip5?l?/??!H6?!??7@)n??t?1fP\?n@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorK?8???l?!L???z??)K?8???l?1L???z??:Preprocessing2F
Iterator::Model?̒ 5???!n2???S@)ض(?A&i?1?a?{???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?
F%u??!+9K?&?'@)(?XQ?iX?1F????j??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 23.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?52.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???t????I%Q??53S@Q?1???7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?{,G????{,G???!?{,G???      ??!       "	??]?C????]?C??!??]?C??*      ??!       2	7???????7???????!7???????:	GW??:{	@GW??:{	@!GW??:{	@B      ??!       J	:?`???t?:?`???t?!:?`???t?R      ??!       Z	:?`???t?:?`???t?!:?`???t?b      ??!       JGPUY???t????b q%Q??53S@y?1???7@