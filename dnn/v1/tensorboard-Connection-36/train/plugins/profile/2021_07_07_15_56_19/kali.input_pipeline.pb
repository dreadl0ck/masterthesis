	IIC?@IIC?@!IIC?@	J?w?V"??J?w?V"??!J?w?V"??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLIIC?@O??e??1???jH???AU?t<f???Iӣ??̟	@Y?'??9x??rEagerKernelExecute 0*	)\???HT@2U
Iterator::Model::ParallelMapV2???3???!???-h?8@)???3???1???-h?8@:Preprocessing2F
Iterator::Model???V???!?:????G@)?lscz?1?|???6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatY?n?͓?!?ΏA??7@)?&p?n??1?ڡ?cP2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceû\?wb??!ȧe=??*@)û\?wb??1ȧe=??*@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?6qr?C??!?9?f?4@)cAJx?1b?	??;@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipbg
??إ?!1?C~GKJ@)Ih˹Wu?1?U^??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???מYr?!з7?@)???מYr?1з7?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapY4?????!^&??T6@)Mۿ?ҤT?1ʮޏ???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?54.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9J?w?V"??I?Z????R@Q?'&??7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	O??e??O??e??!O??e??      ??!       "	???jH??????jH???!???jH???*      ??!       2	U?t<f???U?t<f???!U?t<f???:	ӣ??̟	@ӣ??̟	@!ӣ??̟	@B      ??!       J	?'??9x???'??9x??!?'??9x??R      ??!       Z	?'??9x???'??9x??!?'??9x??b      ??!       JGPUYJ?w?V"??b q?Z????R@y?'&??7@