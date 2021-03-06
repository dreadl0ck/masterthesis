?	kF??@kF??@!kF??@	?)??g	@?)??g	@!?)??g	@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLkF??@~??7??1?n?|????Ag??F??I()? F@Y?H? O??rEagerKernelExecute 0*	*\???(Y@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatu????!???.??=@)?~?????1???j??7@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceh??n??!?[à?4@)h??n??1?[à?4@:Preprocessing2F
Iterator::Modely?ѩ+??![}??>@)?T???B??1????ڎ/@:Preprocessing2U
Iterator::Model::ParallelMapV26Y??э?!^?-P?,@)6Y??э?1^?-P?,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateiƢ??d??!??????@)fI??Z???1?㐬?	&@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?-?????!??x?:pQ@)?>tA}?|?1??????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???9?w?!jү?@)???9?w?1jү?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap7?????!??l?z?@@){?G?zT?1?ؼp???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?48.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?)??g	@I?+?Q@Qly??:@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	~??7??~??7??!~??7??      ??!       "	?n?|?????n?|????!?n?|????*      ??!       2	g??F??g??F??!g??F??:	()? F@()? F@!()? F@B      ??!       J	?H? O???H? O??!?H? O??R      ??!       Z	?H? O???H? O??!?H? O??b      ??!       JGPUY?)??g	@b q?+?Q@yly??:@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???JAߣ?!???JAߣ?"&
	Greater_8Greater???JAߓ?!º_??έ?"-
LogicalAnd_13
LogicalAnd??-ux??!3b????"!
Cast_49Cast?f*?N%??!̇s)[??"!
Cast_51Cast?f*?N%??!??I????"!
Cast_52Cast?f*?N%??!?e?}???"-
LogicalAnd_12
LogicalAnd?f*?N%??!W??z????"-
LogicalAnd_15
LogicalAnd?f*?N%??!?f?v??"-
LogicalAnd_14
LogicalAnd`??4(ҋ?!?{Z?
4??"!
Cast_50Cast?U???!9??????Q      Y@Y?h???7@a{?e?@	S@q.}A?X@y???????"?

both?Your program is POTENTIALLY input-bound because 21.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?48.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 