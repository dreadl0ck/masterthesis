	?ۼq?@?ۼq?@!?ۼq?@	^?-????^?-????!^?-????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?ۼq?@0?r.???1??-???A??h>???I??w?@YPQ?+???rEagerKernelExecute 0*	??Q?>[@2U
Iterator::Model::ParallelMapV2??Q?Q??!.?F??4@)??Q?Q??1.?F??4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat겘?|\??!??׳??8@)???????1?7S3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?ݓ??Z??!???W1@)?ݓ??Z??1???W1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??~?T???!!@St?@@)Yni5$???1A??10@:Preprocessing2F
Iterator::ModelY?8??m??!]?M]NB@)&6׆???11???o/@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensoreS??.w?!???B?@)eS??.w?1???B?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??:???!?????O@)?????q?14??#??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapH0?[w??!??㥍qA@)?	.V?`Z?1??xT*???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?63.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9^?-????I?6??S@Q?F?22w2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	0?r.???0?r.???!0?r.???      ??!       "	??-?????-???!??-???*      ??!       2	??h>?????h>???!??h>???:	??w?@??w?@!??w?@B      ??!       J	PQ?+???PQ?+???!PQ?+???R      ??!       Z	PQ?+???PQ?+???!PQ?+???b      ??!       JGPUY^?-????b q?6??S@y?F?22w2@