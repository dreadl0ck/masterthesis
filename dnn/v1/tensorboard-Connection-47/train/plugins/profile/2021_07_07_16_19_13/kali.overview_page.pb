?	2>?^??@2>?^??@!2>?^??@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC2>?^??@t?5=(???1?Qew??AVe?????I???W	@rEagerKernelExecute 0*	???(\_W@2U
Iterator::Model::ParallelMapV2????Ŋ??!??0j??;@)????Ŋ??1??0j??;@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatt?^????!?-?4:@)2??Yؓ?1n[?׿?4@:Preprocessing2F
Iterator::Model@ٔ+?˥?![ Xc?F@)??镲??1m?E4?1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?#??????!?O?s3-@)?#??????1?O?s3-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?????^??!պ??R6@)?????}?1L??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?i?WV?t?!?Igta?@)?i?WV?t?1?Igta?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip5?l?/??!??觜;K@)?St$??p?1?ܲL??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapI?2????!<?G??7@)(?XQ?iX?1k?E????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?55.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIV1X?/?R@Q?:??@38@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	t?5=(???t?5=(???!t?5=(???      ??!       "	?Qew???Qew??!?Qew??*      ??!       2	Ve?????Ve?????!Ve?????:	???W	@???W	@!???W	@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qV1X?/?R@y?:??@38@?"C
%gradient_tape/sequential/dense/MatMulMatMulo???o???!o???o???0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulo???o???!o???o???"E
)gradient_tape/sequential/dense_9/MatMul_1MatMul??7+?~?!????zR??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMuld?0e?~?!????)??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMuld?0e?~?!0?ב???"F
*gradient_tape/sequential/dense_11/MatMul_1MatMuld?0e?~?!?
?2ƨ?"F
*gradient_tape/sequential/dense_12/MatMul_1MatMuld?0e?~?!???郎?"F
*gradient_tape/sequential/dense_13/MatMul_1MatMuld?0e?~?!u:?A??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMuld?0e?~?!p??d1??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMuld?0e?~?!?&{?? ??Q      Y@Y???L6@aϺ??lS@q??I??7'@y}?????"?
both?Your program is POTENTIALLY input-bound because 19.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?55.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?11.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 