	?}???U@?}???U@!?}???U@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?}???U@?W?B?_??1???????A???5??I???H??@rEagerKernelExecute 0*??(\??Z@)      =2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatX??0_^??!?0F??=@)>?$@M-??1??9`>?8@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice>???d???!?t?BH8@)>???d???1?t?BH8@:Preprocessing2U
Iterator::Model::ParallelMapV2X9??v???!ӑ?Mh-@)X9??v???1ӑ?Mh-@:Preprocessing2F
Iterator::Model;?f????!Mղ??<@)?????1?????,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate]m???{??!?n{5??@@)??3KԄ?1?ѰP?#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?ypw?n??!?J??V?Q@)I??Z??w?1??~L??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?-???=v?!?Iݗ?V@)?-???=v?1?Iݗ?V@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapj???v???!HL???A@)?p>??`?1??[p?C??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?51.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?9XS[R@QA㟲?:@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?W?B?_???W?B?_??!?W?B?_??      ??!       "	??????????????!???????*      ??!       2	???5?????5??!???5??:	???H??@???H??@!???H??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?9XS[R@yA㟲?:@