	?S?*?"@?S?*?"@!?S?*?"@	?E=Z????E=Z???!?E=Z???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?S?*?"@)??Pjo??1?Cl?p??A?C??????I=b??Bg@Y?-]?6??rEagerKernelExecute 0*	]???(<[@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??G?`??!?W?b]=@)?&k?C4??1@?oGp}7@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??????!???0Z?5@)??????1???0Z?5@:Preprocessing2U
Iterator::Model::ParallelMapV2	?/?
??!^?\??,0@)	?/?
??1^?\??,0@:Preprocessing2F
Iterator::Model??e??a??!j?2?)?@)Tƿϸ??1?ʆ??-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??:?f???!?7g??@)s.?Ue߅?1?!?ll?#@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor-C??6z?!4????@)-C??6z?14????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??m?2??!eyO??5Q@) ?o_?y?1?1??!@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap'?Wʢ?!&??0?@@)???4a?1?lH????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 12.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?71.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?E=Z???I,i???T@Q???h?-@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	)??Pjo??)??Pjo??!)??Pjo??      ??!       "	?Cl?p???Cl?p??!?Cl?p??*      ??!       2	?C???????C??????!?C??????:	=b??Bg@=b??Bg@!=b??Bg@B      ??!       J	?-]?6???-]?6??!?-]?6??R      ??!       Z	?-]?6???-]?6??!?-]?6??b      ??!       JGPUY?E=Z???b q,i???T@y???h?-@