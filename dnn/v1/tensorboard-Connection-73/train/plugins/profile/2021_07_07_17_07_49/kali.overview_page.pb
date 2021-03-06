?	?W˝??@?W˝??@!?W˝??@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?W˝??@^?c@????1W?f?"??Aw???s???I?N???@rEagerKernelExecute 0*	ףp=
gU@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?G?`๗?!??P?;@)?k?,	P??1M\	?6@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceHĔH????!52X4@)HĔH????152X4@:Preprocessing2U
Iterator::Model::ParallelMapV2q8??9@??!?.?#??2@)q8??9@??1?.?#??2@:Preprocessing2F
Iterator::Model?X?O0??!?6陵7A@):@0G?ߋ?1?}???/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??????!?H< j?>@)"?^F?܂?1?'>$?%@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip>"?D???!?d3%dP@)?i?WV?t?1=x{O~?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?n??\?q?!<??I#@)?n??\?q?1<??I#@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap}"O?????!)????O@@)A??h:;Y?1?W?w???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?58.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI????ZS@Q?|y??6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	^?c@????^?c@????!^?c@????      ??!       "	W?f?"??W?f?"??!W?f?"??*      ??!       2	w???s???w???s???!w???s???:	?N???@?N???@!?N???@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q????ZS@y?|y??6@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulȺ??^(??!Ⱥ??^(??"C
%gradient_tape/sequential/dense/MatMulMatMul?K?*????!;4?????0"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul??OX??~?!"?G)_<??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMulTr?d?~?!?a6A?v??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMulTr?d?~?!&????O??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMulTr?d?~?!p>[?w(??"E
)gradient_tape/sequential/dense_4/MatMul_1MatMulTr?d?~?!???F:??"E
)gradient_tape/sequential/dense_7/MatMul_1MatMulTr?d?~?!??y????"E
)gradient_tape/sequential/dense_9/MatMul_1MatMulTr?d?~?!?D	?_ٲ?"F
*gradient_tape/sequential/dense_10/MatMul_1MatMulLMtF?{?!|)K7????Q      Y@Y?18??5@a??18?S@qFC?pAM"@y0;J????"?

both?Your program is POTENTIALLY input-bound because 18.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?58.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 