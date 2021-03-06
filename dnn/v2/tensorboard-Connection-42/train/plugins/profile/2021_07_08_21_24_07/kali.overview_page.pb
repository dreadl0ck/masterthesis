?	t?Oq?@t?Oq?@!t?Oq?@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCt?Oq?@GV~?Q??1?խ?????A?$#gaO??I?@?C??@rEagerKernelExecute 0*23333cX@)      =2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat|DL?$z??!??B??9@)]?`7l[??1?Sa4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice+??????!L0.`?3@)+??????1L0.`?3@:Preprocessing2U
Iterator::Model::ParallelMapV2??ek}??!}???K?1@)??ek}??1}???K?1@:Preprocessing2F
Iterator::Modelŏ1w-??!??NXA2A@)?u??ݐ?1?z?6?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateҩ+??y??!j(?}~@@)????????1~?At6?)@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip????Mb??!???S?fP@)/?r?]?t?11?p?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor{?G?zt?!b??(??@){?G?zt?1b??(??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?????v??!<
K?{A@);?f??_?1???ҧ??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 23.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?54.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI@2?V?cS@Q?6#?q6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	GV~?Q??GV~?Q??!GV~?Q??      ??!       "	?խ??????խ?????!?խ?????*      ??!       2	?$#gaO???$#gaO??!?$#gaO??:	?@?C??@?@?C??@!?@?C??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q@2?V?cS@y?6#?q6@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?*`???!?*`???"&
	Greater_8Greater[h?6p???!???6?_??"!
Cast_51CastB?????!????u??"!
Cast_52CastB?????!d???U???"-
LogicalAnd_13
LogicalAndB?????!,㕻???"-
LogicalAnd_14
LogicalAndx??m?ǆ?![zR?z??"-
LogicalAnd_15
LogicalAndx??m?ǆ?!??S??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMulx??m?ǆ?!\?e???"!
Cast_49Cast?T?$????!???D(d??"!
Cast_50Cast?T?$????!?^??G???Q      Y@Y]?0???<@a)߳	??Q@q???h8?#@y??x????"?

both?Your program is POTENTIALLY input-bound because 23.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?54.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 