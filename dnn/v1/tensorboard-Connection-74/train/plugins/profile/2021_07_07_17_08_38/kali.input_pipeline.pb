	J??ci@J??ci@!J??ci@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCJ??ci@?Vд????1?ȓ?kf??AZd;?O???IyY?@rEagerKernelExecute 0*	?Q??kV@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??~?n??!?O???:@)/?>:u???1?2??y?5@:Preprocessing2U
Iterator::Model::ParallelMapV2j?q?????!?#乒4@)j?q?????1?#乒4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?o%;6??!??{?2@)?o%;6??1??{?2@:Preprocessing2F
Iterator::Model\8?L??!??&?A@)?$]3?f??1????-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???{??!?s??=@)0?[w???1R????&@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??%䃞??!????t P@)Ϡ???u?1??1?v@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorL??1%r?!t?<W?@)L??1%r?1t?<W?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???ek??!?v۟@@)??<?^?1@G?s%? @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?56.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI*Ȍ??}S@QW????	6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?Vд?????Vд????!?Vд????      ??!       "	?ȓ?kf???ȓ?kf??!?ȓ?kf??*      ??!       2	Zd;?O???Zd;?O???!Zd;?O???:	yY?@yY?@!yY?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q*Ȍ??}S@yW????	6@