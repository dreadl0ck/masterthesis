?	!XU/?@!XU/?@!!XU/?@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC!XU/?@?g?,;??1???p???A?tv28J??IIG9?M @rEagerKernelExecute 0*	?p=
?sY@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat3???yS??!??9h??@@)?_??9??1rc)j?'9@:Preprocessing2F
Iterator::ModelTol?`??!???@@)7??????1???K&1@:Preprocessing2U
Iterator::Model::ParallelMapV2r?&"???!??7?/0@)r?&"???1??7?/0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice!Y?n??!98tJ?:,@)!Y?n??198tJ?:,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?vöE??!??e}?=8@)????h??1?MW??@$@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?????ڀ?!T'???* @)?????ڀ?1T'???* @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip9(a??_??!??5u?P@)?ui??}?1?J???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapAJ?i??!ο?HK:@)???4a?1?Y?:9l @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?63.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI???1?T@Q? D8??3@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?g?,;???g?,;??!?g?,;??      ??!       "	???p??????p???!???p???*      ??!       2	?tv28J???tv28J??!?tv28J??:	IG9?M @IG9?M @!IG9?M @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q???1?T@y? D8??3@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsL???}??!L???}??"&
	Greater_8Greater?5C9???!??]?p???"!
Cast_49Cast???????!lb3v)??"!
Cast_52Cast???????!???ͽ???"-
LogicalAnd_13
LogicalAnd???????!??C??<??"!
Cast_51Cast:??O1??!?G?c?b??"-
LogicalAnd_14
LogicalAnd:??O1??!??dE???"-
LogicalAnd_15
LogicalAnd:??O1??!??&>???"-
LogicalAnd_12
LogicalAnd2;?Oȅ?!????????"!
Cast_50CastE???!iL??럾?Q      Y@Yr???u7@a}c??"S@q
n??!@y?ݲW????"?

both?Your program is POTENTIALLY input-bound because 16.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?63.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 