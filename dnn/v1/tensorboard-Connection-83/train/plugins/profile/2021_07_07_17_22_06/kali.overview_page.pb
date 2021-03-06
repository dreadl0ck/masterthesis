?	???T@???T@!???T@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC???T@?s]????1????51??AE?a????I\t??z?	@rEagerKernelExecute 0*	??Q?5V@2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceH?c?C??!?"?TN6@)H?c?C??1?"?TN6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?׻?ޫ??!?????8@)?Q????1??EG?3@:Preprocessing2F
Iterator::ModelT??????!?W???jB@)]?].?;??1* ??@?2@:Preprocessing2U
Iterator::Model::ParallelMapV2LqU?wE??!;??Z?1@)LqU?wE??1;??Z?1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??q????!?(?UH>@)6Y???}?1??Td @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??-s???!N?J2?O@)?ڧ?1u?1????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?&S?r?!??)*}@)?&S?r?1??)*}@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapG=D?;???!pզ??;@@)?x#??_?1D"?x@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?55.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?Q??S@Q??Ѥ?7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?s]?????s]????!?s]????      ??!       "	????51??????51??!????51??*      ??!       2	E?a????E?a????!E?a????:	\t??z?	@\t??z?	@!\t??z?	@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?Q??S@y??Ѥ?7@?"C
%gradient_tape/sequential/dense/MatMulMatMulamN?o??!amN?o??0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?C?Gp???!X?(K???"E
)gradient_tape/sequential/dense_1/MatMul_1MatMullL??@?~?!se?k?Y??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMullL??@?~?!G?AF???"F
*gradient_tape/sequential/dense_15/MatMul_1MatMullL??@?~?!?ŘVd[??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMullL??@?~?!b??f?2??"E
)gradient_tape/sequential/dense_3/MatMul_1MatMullL??@?~?!?XFw?	??"E
)gradient_tape/sequential/dense_5/MatMul_1MatMullL??@?~?!~"??<???"E
)gradient_tape/sequential/dense_7/MatMul_1MatMullL??@?~?!??KBܱ?"E
)gradient_tape/sequential/dense_8/MatMul_1MatMullL??@?~?!?Z%T?ǳ?Q      Y@Y???L6@aϺ??lS@qˀ>ه?$@y?kf???"?
both?Your program is POTENTIALLY input-bound because 20.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?55.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?10.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 