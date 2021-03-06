?	1е/?@1е/?@!1е/?@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC1е/?@K<?lʕ??1dX??G??A?W?\??I????>@rEagerKernelExecute 0*	???Q?V@2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?D?????!r??$ȕ8@)?D?????1r??$ȕ8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatV+~????!^????9@)???I???1q?
?z4@:Preprocessing2U
Iterator::Model::ParallelMapV2i??Q???!?c??c2@)i??Q???1?c??c2@:Preprocessing2F
Iterator::Model~??7???!?1?t B@)??hUM??1 ??P?1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?>tA}˜?!?7????@)??0?*x?1J??,?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip? ?X4???!	?=???O@)j0?G?t?1????Gp@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorv?ꭁ?r?!j??s.@)v?ꭁ?r?1j??s.@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???B?i??!????=n@@)??? ?Y?1??{?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?55.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIi??R@Q?[v?c9@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	K<?lʕ??K<?lʕ??!K<?lʕ??      ??!       "	dX??G??dX??G??!dX??G??*      ??!       2	?W?\???W?\??!?W?\??:	????>@????>@!????>@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qi??R@y?[v?c9@?"C
%gradient_tape/sequential/dense/MatMulMatMul7????W??!7????W??0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul7????W??!7????W??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul[iI?~?!?&3?0???"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul[iI?~?!ݾ??[Р?"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul[iI?~?!>??7????"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul[iI?~?!?!??t??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul[iI?~?! AN
&G??"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul[iI?~?!0??????"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul[iI?~?!?KTn????"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul[iI?~?!???"?޳?Q      Y@Y???L6@aϺ??lS@qb>c???0@yV?Ҕ????"?
both?Your program is POTENTIALLY input-bound because 18.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?55.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?16.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 