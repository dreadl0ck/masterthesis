	j?TQ<@j?TQ<@!j?TQ<@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCj?TQ<@??.4????1??:8???A?,?Yf??I?V$&?A@rEagerKernelExecute 0*	?G?z?W@2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicew?T????!? ?9??7@)w?T????1? ?9??7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatS?!?uq??!fB??J}<@)?L??~ޔ?1?~?*?5@:Preprocessing2F
Iterator::ModelX9??v??!?`A??@)vq?-??1??????0@:Preprocessing2U
Iterator::Model::ParallelMapV26?;Nё??!?Τ?-@)6?;Nё??1?Τ?-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate%;6????!??????@)???Q?~?1??W"?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?&???Kz?!k&xL@)?&???Kz?1k&xL@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipe?z?Fw??!?'???Q@)???)Wxw?1?}??e]@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???d?F??!?^?=??@@)?=\r?)]?1???{F??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?58.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIP?l???S@Q¢L* ?5@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??.4??????.4????!??.4????      ??!       "	??:8?????:8???!??:8???*      ??!       2	?,?Yf???,?Yf??!?,?Yf??:	?V$&?A@?V$&?A@!?V$&?A@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qP?l???S@y¢L* ?5@