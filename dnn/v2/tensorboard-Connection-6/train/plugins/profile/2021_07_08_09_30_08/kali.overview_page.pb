?	?????@?????@!?????@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?????@y?ߢ????1u?V???A?<?r?}??I,J	???@rEagerKernelExecute 0*	R???1^@2U
Iterator::Model::ParallelMapV2PS???"??!?,??'?;@)PS???"??1?,??'?;@:Preprocessing2F
Iterator::Modeld;?O????!o@p?,?H@))?'?$???1QT??1?5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?{??Pk??!???}t\5@)s.?Ueߕ?1?2?@_?1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicevöE???! D/#?1-@)vöE???1 D/#?1-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate>"?D??!s+ًk?7@)E???V	??1???H?!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?V&?R???!???g?CI@)?0?*u?1??*I@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor5?l?/r?!?T??h@)5?l?/r?1?T??h@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap!?J͞?!(W???8@)?@??_?[?1H???Gc??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?54.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI`??s?S@Q?Y1b?7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	y?ߢ????y?ߢ????!y?ߢ????      ??!       "	u?V???u?V???!u?V???*      ??!       2	?<?r?}???<?r?}??!?<?r?}??:	,J	???@,J	???@!,J	???@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q`??s?S@y?Y1b?7@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?n?+ߣ?!?n?+ߣ?"C
%gradient_tape/sequential/dense/MatMulMatMul??oU???!bR%i?@??0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?n?+߃?!!?.?8??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMulZ??????!|??(U.??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?1}?N???!?0??>@??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul?1}?N???!?֬?(R??"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul?1}?N???!*}??d??"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul?1}?N???!d#?p?u??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul??Δ??}?!???R??"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul??Δ??}?!?f?/??Q      Y@Yr???u7@a}c??"S@q?ߛJ??$@yڝ??????"?
both?Your program is POTENTIALLY input-bound because 21.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?54.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?10.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 