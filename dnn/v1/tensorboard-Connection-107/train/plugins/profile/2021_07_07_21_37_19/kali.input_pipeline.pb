	Ҧ???@Ҧ???@!Ҧ???@	Xp%^@Xp%^@!Xp%^@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLҦ???@???P1???1??*Q?V??A)]???2??I?3K?4@Ye?X???rEagerKernelExecute 0*	??Q??^@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?m?2d??!?t?ܥM=@)W[??잜?1?z?*?6@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate_F???j??!?I???sC@)????+??1_C??]4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice
???%???!?O??]?2@)
???%???1?O??]?2@:Preprocessing2U
Iterator::Model::ParallelMapV2??~??@??!i x??(@)??~??@??1i x??(@:Preprocessing2F
Iterator::Model?;Nё\??!??~u308@)???x??1?h???z'@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorm??J?R??!x??@)m??J?R??1x??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipC9ѮBʷ?!?N?"??R@)?????%~?1]X@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap$(~??k??!IA5U?@D@)X??j`?1????R???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?48.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9Xp%^@IkN{?
?P@QS?d?x=@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???P1??????P1???!???P1???      ??!       "	??*Q?V????*Q?V??!??*Q?V??*      ??!       2	)]???2??)]???2??!)]???2??:	?3K?4@?3K?4@!?3K?4@B      ??!       J	e?X???e?X???!e?X???R      ??!       Z	e?X???e?X???!e?X???b      ??!       JGPUYXp%^@b qkN{?
?P@yS?d?x=@