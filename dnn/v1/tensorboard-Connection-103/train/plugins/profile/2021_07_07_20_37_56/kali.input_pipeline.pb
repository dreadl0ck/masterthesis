	ު?PM?@ު?PM?@!ު?PM?@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCު?PM?@WC?K???1ȵ?b????AqVDM????I??z?2?@rEagerKernelExecute 0*	Q???!S@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatA?} R???!?}?nBf?@)???%ǝ??1??=a?7@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceK<?l???!??6?13@)K<?l???1??6?13@:Preprocessing2U
Iterator::Model::ParallelMapV2 ^?/???!o??P?B1@) ^?/???1o??P?B1@:Preprocessing2F
Iterator::Model??????!?????@@)$EdX???1????0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateb??h㈕?!S?!B?z;@)??????y?1?`X?? @:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorg??j+?w?!?BJĄ?@)g??j+?w?1?BJĄ?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip1|DL?$??!y???P@)]?????q?1=????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapI?f??6??!?O)?S?=@)t^c???Z?1)$;8?$@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?53.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIƩ??qFR@Q?XA?9?:@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	WC?K???WC?K???!WC?K???      ??!       "	ȵ?b????ȵ?b????!ȵ?b????*      ??!       2	qVDM????qVDM????!qVDM????:	??z?2?@??z?2?@!??z?2?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qƩ??qFR@y?XA?9?:@