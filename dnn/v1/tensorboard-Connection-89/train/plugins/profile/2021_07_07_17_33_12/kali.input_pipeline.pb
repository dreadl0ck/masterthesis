	;???;"@;???;"@!;???;"@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC;???;"@ ?yrM??1??????AJ+???IZ??c!?@rEagerKernelExecute 0*	p=
ף@V@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat|~!<ژ?!?pX??D;@)?2d????1&5(1x5@:Preprocessing2U
Iterator::Model::ParallelMapV2??????!E?~i?U3@)??????1E?~i?U3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice	???k??!cj)?63@)	???k??1cj)?63@:Preprocessing2F
Iterator::Model?R?o*R??!???>? C@)i??Q???1?\?2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatec('?UH??!??y?;@)iUMu?1\]*3?A!@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?/???"u?!s??\;0@)?/???"u?1s??\;0@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?[Ɏ?@??![C??N@)/n??r?1?5K5??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?]?o%??!?Hy?}?=@)6Y???]?1?}??[ @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 17.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?59.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI8'9n?QS@QcG??6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	 ?yrM?? ?yrM??! ?yrM??      ??!       "	????????????!??????*      ??!       2	J+???J+???!J+???:	Z??c!?@Z??c!?@!Z??c!?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q8'9n?QS@ycG??6@