	???t@???t@!???t@	??.b??????.b????!??.b????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL???t@?<,Ԛ&??1P?}:???A]m???{??I??_????Y?? dˢ?rEagerKernelExecute 0*	)\???`q@2K
Iterator::Model::Map?䠄???!XE?1?R@)#??~j???1[????_Q@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???J???!Lq?qW!@)???J???1Lq?qW!@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?>tA}˜?!?H9W?9$@)R?????1ec?դ @:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV26Y??э?!??T^??@)6Y??э?1??T^??@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?q??????!??Zw?p&@)??bg
}?1ZJ?wf@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip0??{????!m{?9w?7@)M?O?t?1B XR???:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor1%??et?!D?ۧ??)1%??et?1D?ۧ??:Preprocessing2F
Iterator::Modeli:;%??!%!?1"S@)P6?
?rq?1*?v?????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapv7Ou?͠?!-?:>?'@)????ŊZ?1????????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 26.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?46.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??.b????I?X?XuR@Q???/?39@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?<,Ԛ&???<,Ԛ&??!?<,Ԛ&??      ??!       "	P?}:???P?}:???!P?}:???*      ??!       2	]m???{??]m???{??!]m???{??:	??_??????_????!??_????B      ??!       J	?? dˢ??? dˢ?!?? dˢ?R      ??!       Z	?? dˢ??? dˢ?!?? dˢ?b      ??!       JGPUY??.b????b q?X?XuR@y???/?39@