	?)??YT@?)??YT@!?)??YT@	??????????????!???????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?)??YT@?1?#???1?g??`/??A_)?Ǻ??IgE?D_@Y{j??U???rEagerKernelExecute 0*	H?z??h@2K
Iterator::Model::Map-C??6??!%kjΤ?Q@)Ic???&??1l?????O@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatZd;?O???!%czKC'@)??<I?f??1|????,"@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?>???!z?È?M @)?>???1z?È?M @:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicem?IF??!?
?"b@)m?IF??1?
?"b@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?[[%??!?P??x?'@)?n?燁?1D???P@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?i?WV?t?!????Y@)?i?WV?t?1????Y@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip??????!ۜꅴ?:@)QN????s?1h34??@:Preprocessing2F
Iterator::Model^?????!?X???PR@)YLl>?e?1i?????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap????????!???%I)@)kH?c?CW?1{̫????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?58.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???????IV-m???R@Q?ZN??7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?1?#????1?#???!?1?#???      ??!       "	?g??`/???g??`/??!?g??`/??*      ??!       2	_)?Ǻ??_)?Ǻ??!_)?Ǻ??:	gE?D_@gE?D_@!gE?D_@B      ??!       J	{j??U???{j??U???!{j??U???R      ??!       Z	{j??U???{j??U???!{j??U???b      ??!       JGPUY???????b qV-m???R@y?ZN??7@