	j??%A!@j??%A!@!j??%A!@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCj??%A!@???zOe??1?ND???A <?.??I?rL??@rEagerKernelExecute 0*	=
ףpV@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??	??ϛ?!r?W(?>@)R,????1?K?wx9@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice{Nz??ړ?!k?ue?5@){Nz??ړ?1k?ue?5@:Preprocessing2F
Iterator::Model?v??/??!?????@@)?????%??1?>???0@:Preprocessing2U
Iterator::Model::ParallelMapV2??J?8??!%??W?'/@)??J?8??1%??W?'/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[|
????!"??)>?<@)??@???x?1?c0d[@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??"????!????P@)??f??u?1MK=?;H@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensore?I)??r?!??HÞ?@)e?I)??r?1??HÞ?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap-??#???!??;$?@)??hUM`?1?c??0?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 12.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?71.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI\D?|U@Q$?]$?/@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???zOe?????zOe??!???zOe??      ??!       "	?ND????ND???!?ND???*      ??!       2	 <?.?? <?.??! <?.??:	?rL??@?rL??@!?rL??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q\D?|U@y$?]$?/@