?	.?R\U?@.?R\U?@!.?R\U?@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC.?R\U?@! _B???1$???????A??Ɯ?I?K???4@rEagerKernelExecute 0*	]???(?U@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat????????!?p$?@=@)Q?|a2??1;l????7@:Preprocessing2U
Iterator::Model::ParallelMapV2?>???!???Q?2@)?>???1???Q?2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice>????!??|???0@)>????1??|???0@:Preprocessing2F
Iterator::Model?;??)t??!t?/'A@)y?t????1{Z?wl/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateJ+???!0???B<@)UMu???1?nN '@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip????(??!???hlP@)]?`7l[t?19?d??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???9]s?!O??|?@)???9]s?1O??|?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????EB??!?????>@)?R\U?]a?1??C?_?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 25.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?53.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIO?l^?S@Q??jL?Z5@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	! _B???! _B???!! _B???      ??!       "	$???????$???????!$???????*      ??!       2	??Ɯ???Ɯ?!??Ɯ?:	?K???4@?K???4@!?K???4@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qO?l^?S@y??jL?Z5@?"C
%gradient_tape/sequential/dense/MatMulMatMul???"}??!???"}??0"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul???"}??!???"}??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul???"}??!??}?????"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul??!cc?}?!".?F6??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul??q???}?!zgQ??ܣ?"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul??q???}?!Ҡ?'ߛ??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul??q???}?!*ڭ?3[??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul??q???}?!?\	???"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul??q???}?!m&=?l??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul??q???}?!C\u?L??Q      Y@Y???L6@aϺ??lS@qܤ?x!@y?M???"?

both?Your program is POTENTIALLY input-bound because 25.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?53.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 