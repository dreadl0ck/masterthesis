	?|y??@?|y??@!?|y??@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?|y??@\='?o|??1ٵ?ݒ\??A?,????I?'֩??@rEagerKernelExecute 0*	???(\?[@2U
Iterator::Model::ParallelMapV2Tt$?????!`??dw?:@)Tt$?????1`??dw?:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatx?=\r??!)W?H?8@)=?!7???1:?N??4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicej0?GĔ?!??(??2@)j0?GĔ?1??(??2@:Preprocessing2F
Iterator::Model???g???!?nn??D@)*oG8-x??1Y?>??w.@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate6?
?r??!y?(?y;@)?i?WV???1?Q ?D?!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip~??7???!:???`M@)?ڧ?1u?1???[?R@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorn?2d?q?!S?0?E?@)n?2d?q?1S?0?E?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???x??!Q???̹<@) ????]?1~M?E+%??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?50.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noINF?5<R@Q???+;@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	\='?o|??\='?o|??!\='?o|??      ??!       "	ٵ?ݒ\??ٵ?ݒ\??!ٵ?ݒ\??*      ??!       2	?,?????,????!?,????:	?'֩??@?'֩??@!?'֩??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qNF?5<R@y???+;@