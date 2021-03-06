?	????ʯ@????ʯ@!????ʯ@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC????ʯ@z?m?h??1???ͱ??AZ??M??I?f??%@rEagerKernelExecute 0*	)\????U@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???Hh˙?!u`???<@)^???T???1?[%?ߔ7@:Preprocessing2F
Iterator::ModelʉvR??![h???	A@)~?k?,	??1R۬e?2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?V?I???!t?\{1@)?V?I???1t?\{1@:Preprocessing2U
Iterator::Model::ParallelMapV26?;Nё??!e??/0@)6?;Nё??1e??/0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?	?????!?ۭ#??=@)j?t???1??K#r?(@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?n??S??!?˚	{P@)U???N@s?1????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorU???N@s?!????@)U???N@s?1????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapy#????!$?cʅ?@)?????W?1?^O???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 22.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?55.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIi??w??S@Q]?? J?5@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	z?m?h??z?m?h??!z?m?h??      ??!       "	???ͱ?????ͱ??!???ͱ??*      ??!       2	Z??M??Z??M??!Z??M??:	?f??%@?f??%@!?f??%@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qi??w??S@y]?? J?5@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul ??Ff??! ??Ff??"C
%gradient_tape/sequential/dense/MatMulMatMulOP??Ԃ?!?3jqk???0"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul??n?B??!v?o(?>??"E
)gradient_tape/sequential/dense_8/MatMul_1MatMul??n?B??!?޺o"p??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul؅C?Eb?!]O k\??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul؅C?Eb?!?KгH??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul؅C?Eb?!?0???4??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul؅C?Eb?!?Pn????"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul؅C?Eb?!$??????"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul؅C?Eb?!???H????Q      Y@Y???L6@aϺ??lS@qo?wdM#@y???MƄ??"?

both?Your program is POTENTIALLY input-bound because 22.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?55.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 