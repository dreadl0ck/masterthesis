?	???_Z$@???_Z$@!???_Z$@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC???_Z$@??֏??1: 	?v???Aۿ?Ҥ??I?f???@rEagerKernelExecute 0*	???(\OX@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?'?>???!?ٓ|?9@)????<,??1??Y?WB4@:Preprocessing2U
Iterator::Model::ParallelMapV2???U+??!@?n?W@3@)???U+??1@?n?W@3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?mQf?L??!?????`2@)?mQf?L??1?????`2@:Preprocessing2F
Iterator::ModelL???<ա?!<:???A@)????#??1̔?7?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate :̗`??!o?y??@)???b('??1?\r>?C*@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorϠ???u?!????@)Ϡ???u?1????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip ?4???!??b+?P@)??N?z1t?14m???G@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?? v???!~)? ??@@)!?J?^?1?hc????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?63.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI????LxT@Qy?e??2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??֏????֏??!??֏??      ??!       "	: 	?v???: 	?v???!: 	?v???*      ??!       2	ۿ?Ҥ??ۿ?Ҥ??!ۿ?Ҥ??:	?f???@?f???@!?f???@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q????LxT@yy?e??2@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?6??H???!?6??H???"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul???Y????!"???j??"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul???Y????!?f???`??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?,.E\%~?!??????"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?,.E\%~?!???o????"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?,.E\%~?!4?5?Z~??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?,.E\%~?!?IۀC??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul?,.E\%~?!??????"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul?,.E\%~?!uj?.???"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?,.E\%~?!>Mf??ȳ?Q      Y@Y?18??5@a??18?S@q?\??;U@y?IۀC??"?

both?Your program is POTENTIALLY input-bound because 18.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?63.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 