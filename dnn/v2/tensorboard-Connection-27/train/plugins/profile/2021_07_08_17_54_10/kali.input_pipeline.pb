	?C????@?C????@!?C????@	????(??????(??!????(??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?C????@?A?L????1????? @A?\o????I^??_?@Y?? ?S???rEagerKernelExecute 0*effff?X@)      =2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???eN??!?9???6@)???eN??1?9???6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???9#J??!?)???:@)E?
)????1$?986@:Preprocessing2F
Iterator::Modela??+e??!?[????A@)]?`7l[??1?9??3@:Preprocessing2U
Iterator::Model::ParallelMapV2Ɏ?@????!?G
&s/@)Ɏ?@????1?G
&s/@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??? ?r??!@R0?? P@)-[닄?|?1?jXz'@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateuv28J^??!?:????<@)V?F???x?1??l?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???B??r?!?jXz'@)???B??r?1?jXz'@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapޫV&?R??!dn}?>@)?VC?K_?1?<-tǮ??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?48.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9????(??I????Q@Q?.:?B?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?A?L?????A?L????!?A?L????      ??!       "	????? @????? @!????? @*      ??!       2	?\o?????\o????!?\o????:	^??_?@^??_?@!^??_?@B      ??!       J	?? ?S????? ?S???!?? ?S???R      ??!       Z	?? ?S????? ?S???!?? ?S???b      ??!       JGPUY????(??b q????Q@y?.:?B?@