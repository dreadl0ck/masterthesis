	e?P3?z@e?P3?z@!e?P3?z@	??AL????AL??!??AL??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLe?P3?z@???QI??1L?'????A?o|??%??I?>Ȳ`"@YJ?y???rEagerKernelExecute 0*	     ?Y@2U
Iterator::Model::ParallelMapV2?͍?	K??!??񈞡:@)?͍?	K??1??񈞡:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??x?=??!?j,H?:@)???4cє?1g??]?3@:Preprocessing2F
Iterator::ModelwJ????!d??N??D@)u???ݏ?1?m?)??-@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??<???!?? ?%-@)??<???1?? ?%-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?&???K??!?Epv?8@)8?*5{???1?B??K[$@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorV-?}?!Jx???@)V-?}?1Jx???@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?:?f???!?|
?/M@)46<?Rv?1?!?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapp???0??!?c????:@)???_vO^?1????????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?64.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??AL??I???7T@Q?'?YiH2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???QI?????QI??!???QI??      ??!       "	L?'????L?'????!L?'????*      ??!       2	?o|??%???o|??%??!?o|??%??:	?>Ȳ`"@?>Ȳ`"@!?>Ȳ`"@B      ??!       J	J?y???J?y???!J?y???R      ??!       Z	J?y???J?y???!J?y???b      ??!       JGPUY??AL??b q???7T@y?'?YiH2@