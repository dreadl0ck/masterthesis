	?e???@?e???@!?e???@	???$?7@???$?7@!???$?7@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?e???@9?ߡ(P??16??g???A?#H??ј?I?|?͍?@Y??pY????rEagerKernelExecute 0*	R???!l@2K
Iterator::Model::Map;pΈ????!?[?V?R@)??g?RD??1?/?r?O@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2??3KԔ?!?5K?>"@)??3KԔ?1?5K?>"@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?TƿϘ?!?f=?3?%@)?1=a???1?XK??a!@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceQ??C?R??!????? @)Q??C?R??1????? @:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateS\U?]??!????[(@)??ek}??1??'?9[@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?uq???!?n?)?9@)@j'?;t?1?Q?L?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor7l[?? s?!?7?Ú? @)7l[?? s?1?7?Ú? @:Preprocessing2F
Iterator::Model?D???V??!K?y???R@) ????m?1?B"???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?ʦ\???!??M?)@)wJ??\?1?6??*??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?49.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???$?7@INrL!??Q@Q6?/?<?:@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	9?ߡ(P??9?ߡ(P??!9?ߡ(P??      ??!       "	6??g???6??g???!6??g???*      ??!       2	?#H??ј??#H??ј?!?#H??ј?:	?|?͍?@?|?͍?@!?|?͍?@B      ??!       J	??pY??????pY????!??pY????R      ??!       Z	??pY??????pY????!??pY????b      ??!       JGPUY???$?7@b qNrL!??Q@y6?/?<?:@