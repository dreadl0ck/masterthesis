	?O?޼!@?O?޼!@!?O?޼!@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?O?޼!@=?Е? @1??S㥛??A??Q???I?[>???@rEagerKernelExecute 0*	??Q?UW@2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?-???=??!?0вE7@)?-???=??1?0вE7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat9??? ??!??t?f>9@)?l??????1`I??w?3@:Preprocessing2F
Iterator::Model)"?*?Ȝ?!?&?ar>@)>????1??2z/@:Preprocessing2U
Iterator::Model::ParallelMapV2y?t????!?r?H?/-@)y?t????1?r?H?/-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateTR'?????!?Cwt?B@)??Bs?F??15??<l~+@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??Hh˹t?!$??@)??Hh˹t?1$??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??B???!J??gcxQ@)??6?ُt?1 &
?ڃ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?lscz¢?!?,8 ?C@)???4a?1۾J?8?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 23.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?60.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noII?xr1U@Q7?8lt.@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	=?Е? @=?Е? @!=?Е? @      ??!       "	??S㥛????S㥛??!??S㥛??*      ??!       2	??Q?????Q???!??Q???:	?[>???@?[>???@!?[>???@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qI?xr1U@y7?8lt.@