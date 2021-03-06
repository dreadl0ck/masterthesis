?	\?nK??@\?nK??@!\?nK??@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC\?nK??@?x#????1HN&n???A?f??j+??I*A*?@rEagerKernelExecute 0*	??Q?EX@2F
Iterator::Model"O???|??!`?{76?C@)????????1?@???5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?*?????!HTS?y?:@)b??h㈕?1?vH???5@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice46<???!ԫ????2@)46<???1ԫ????2@:Preprocessing2U
Iterator::Model::ParallelMapV2X?5?;N??!?ۇh1@)X?5?;N??1?ۇh1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??a?? ??!??c$?);@)?7????1Х?`? @:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorƢ??dpt?!0u+?s?@)Ƣ??dpt?10u+?s?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip֭???7??!?{???eN@)r???_s?1?nl4}@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??ԕ????!4????=@)ŏ1w-!_?1?g^3{P??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 22.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?52.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?t?L?R@Q,??;8@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?x#?????x#????!?x#????      ??!       "	HN&n???HN&n???!HN&n???*      ??!       2	?f??j+???f??j+??!?f??j+??:	*A*?@*A*?@!*A*?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?t?L?R@y,??;8@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitssL???6??!sL???6??"&
	Greater_8Greater?"Q ????!?J?? ???"!
Cast_51Cast?{?B?ӈ?!?<x??"-
LogicalAnd_13
LogicalAnd?{?B?ӈ?!xi?@?'??"!
Cast_49Cast???d????!d*?I??"!
Cast_50Cast???d????!?^?٣???"!
Cast_52Cast???d????!1Y`&????"-
LogicalAnd_12
LogicalAnd???d????!??}9?N??"-
LogicalAnd_14
LogicalAnd???d????!+'?_Y???"-
LogicalAnd_15
LogicalAnd???d????!t??,??Q      Y@Y]?0???<@a)߳	??Q@qQ o??!@y%??H???"?

both?Your program is POTENTIALLY input-bound because 22.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?52.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 