	M?:?/@M?:?/@!M?:?/@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCM?:?/@4K?Բ??1?n?o????AVe?????I?҇.?/@rEagerKernelExecute 0*	
ףp=?S@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatf?ʉv??!?ew_z:@)L??1%??1?	?,?b6@:Preprocessing2U
Iterator::Model::ParallelMapV2???????!Kt'??71@)???????1Kt'??71@:Preprocessing2F
Iterator::Model????a??!?F-???@@)?%jjي?1?3???0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatek?w??#??!??2]?@)1?䠄??1tL?{/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?~?T??!??????.@)?~?T??1??????.@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip-	PS?֪?!?\???P@)??+H3v?1????7c@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor????Ŋj?!??*5_@)????Ŋj?1??*5_@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?%??:???!y???r@@)(?XQ?iX?1??L????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?54.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?+f??R@Q?Qg???8@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	4K?Բ??4K?Բ??!4K?Բ??      ??!       "	?n?o?????n?o????!?n?o????*      ??!       2	Ve?????Ve?????!Ve?????:	?҇.?/@?҇.?/@!?҇.?/@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?+f??R@y?Qg???8@