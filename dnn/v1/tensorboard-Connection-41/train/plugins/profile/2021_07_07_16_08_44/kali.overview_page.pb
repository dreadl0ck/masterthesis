?	H??n@H??n@!H??n@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCH??n@-??DJs??1?"k????A?BB???I??f??@rEagerKernelExecute 0*=
ףpZ@)      =2U
Iterator::Model::ParallelMapV2??6???!r4^?d?9@)??6???1r4^?d?9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???ʦ??!#@*?:@)A??_???1t@?4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?5?o????!???(?0@)?5?o????1???(?0@:Preprocessing2F
Iterator::ModelUj?@+0??!&?ۀ??B@)??x@??1???^l?'@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???N??!?Y?Y<@)?)?D/???1??Ƣa'@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorx?W?f,z?!?
?x?w@)x?W?f,z?1?
?x?w@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?EB[Υ??!?j$r O@)a??+ey?1????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??St$???!???g?=@)?E|'f?X?1\?l? ??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?60.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?~k??qS@Q?R?T86@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	-??DJs??-??DJs??!-??DJs??      ??!       "	?"k?????"k????!?"k????*      ??!       2	?BB????BB???!?BB???:	??f??@??f??@!??f??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?~k??qS@y?R?T86@?"C
%gradient_tape/sequential/dense/MatMulMatMul??X鈻??!??X鈻??0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul??X鈻??!??X鈻??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMulQ?>ڎ8?!?蟬???"F
*gradient_tape/sequential/dense_12/MatMul_1MatMulQ?>ڎ8?!?5<+?+??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMulQ?>ڎ8?!c????"F
*gradient_tape/sequential/dense_15/MatMul_1MatMulQ?>ڎ8?!??????"F
*gradient_tape/sequential/dense_17/MatMul_1MatMulQ?>ڎ8?!??????"E
)gradient_tape/sequential/dense_2/MatMul_1MatMulQ?>ڎ8?!1?-?d??"E
)gradient_tape/sequential/dense_4/MatMul_1MatMulQ?>ڎ8?!?ѹ?W??"E
)gradient_tape/sequential/dense_6/MatMul_1MatMulQ?>ڎ8?!۳u?)K??Q      Y@Y???L6@aϺ??lS@q.?w?!@y|???E??"?

both?Your program is POTENTIALLY input-bound because 16.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?60.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 