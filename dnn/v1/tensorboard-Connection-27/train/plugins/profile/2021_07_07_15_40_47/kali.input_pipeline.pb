	W??: @W??: @!W??: @      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCW??: @??A{?1??1?ᱟ?R??A??=?>t??I?n?1 @rEagerKernelExecute 0*	?Q??+V@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatAJ?i???!g?h:@)?2???y??1dk.??r5@:Preprocessing2U
Iterator::Model::ParallelMapV2T??????!KT?M?r2@)T??????1KT?M?r2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?ȓ?k&??!S?ab?&1@)?ȓ?k&??1S?ab?&1@:Preprocessing2F
Iterator::Model??x]??!>EA@)}????9??1ݯ??p0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??H.?!??!?Ջ=s
@@)??????19?k14?-@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip)?Ǻ???!??`?q]P@)?a???r?1`?Nfz@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor/n??r?!?~_??@)/n??r?1?~_??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????Ϟ?!????*?@@)t^c???Z?1???????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?65.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??8???T@Q;?3]1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??A{?1????A{?1??!??A{?1??      ??!       "	?ᱟ?R???ᱟ?R??!?ᱟ?R??*      ??!       2	??=?>t????=?>t??!??=?>t??:	?n?1 @?n?1 @!?n?1 @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??8???T@y;?3]1@