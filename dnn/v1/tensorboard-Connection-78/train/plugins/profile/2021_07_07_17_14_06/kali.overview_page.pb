?	q????@q????@!q????@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCq????@IZ??#??1?4}v???A5c?tv2??Iu><K?Q@rEagerKernelExecute 0*	43333?R@2U
Iterator::Model::ParallelMapV22r??Ï?!x??E	?4@)2r??Ï?1x??E	?4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?kC?8??!??PI7?9@)S??.???1?B?sj?3@:Preprocessing2F
Iterator::ModelGw;S???!N?܃ ?B@)[|
????1#k0??1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???7?܈?!?????H0@)???7?܈?1?????H0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?-?R\U??!䕭?jA=@)Y?n?̓?1XJ?;?)@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?Q,??r?!H]V3?@)?Q,??r?1H]V3?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip,+MJA???!?#|?O@)??W?p?1|?&@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapEGr????!??}'>R?@)A??h:;Y?1)f>?? @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 17.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?60.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI$???S@Qq?׉k?5@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	IZ??#??IZ??#??!IZ??#??      ??!       "	?4}v????4}v???!?4}v???*      ??!       2	5c?tv2??5c?tv2??!5c?tv2??:	u><K?Q@u><K?Q@!u><K?Q@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q$???S@yq?׉k?5@?"V
5gradient_tape/sequential/dense_19/BiasAdd/BiasAddGradBiasAddGrad?s]mn??!?s]mn??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?w2??s??!????????"C
%gradient_tape/sequential/dense/MatMulMatMul??U?????!?xy??u??0"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul?xy??u??!?????"F
*gradient_tape/sequential/dense_16/MatMul_1MatMulS?????}?!G???P??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?9=(?}?!?QS?m??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?9=(?}?!???̯?"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?9=(?}?!7????ı?"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul?9=(?}?!h??`????"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul?9=(?}?!?%x䀂??Q      Y@Y?18??5@a??18?S@q??B?)@y?Sf?U??"?
both?Your program is POTENTIALLY input-bound because 17.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?60.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?12.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 