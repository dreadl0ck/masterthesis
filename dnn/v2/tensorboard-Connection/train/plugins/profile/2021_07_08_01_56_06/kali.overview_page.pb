?	r?d?Ps@r?d?Ps@!r?d?Ps@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCr?d?Ps@??G?`??1?.??X??AZ?!?[??I??-??@rEagerKernelExecute 0*	?Q???V@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?)Wx????!Q?]f\:@)??V	???1?|q???4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??Ր?ǒ?!???>[+4@)??Ր?ǒ?1???>[+4@:Preprocessing2U
Iterator::Model::ParallelMapV2/n????!??Y5[3@)/n????1??Y5[3@:Preprocessing2F
Iterator::Model֋??hW??!?l??̟B@)~??7???1=i??1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate????6???!?
5T]?;@)K?8???|?1f?\U?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip????6??!"?Z3`O@)n??t?1?Q;A?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorn??t?!?Q;A?@)n??t?1?Q;A?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?L??ݜ?!? .?z ?@)0?AC?g?1e?Ǐ??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?61.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?NT@Q??????3@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??G?`????G?`??!??G?`??      ??!       "	?.??X???.??X??!?.??X??*      ??!       2	Z?!?[??Z?!?[??!Z?!?[??:	??-??@??-??@!??-??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?NT@y??????3@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?ݒ?E??!?ݒ?E??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulv??W???!F?????"8
sequential/dense_19/SoftmaxSoftmaxv??W???!&??O/??"C
%gradient_tape/sequential/dense/MatMulMatMul??@k??!?E?[.???0"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?H?X??x?!-*???"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?H?X??x?!??ߛ??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?H?X??x?!???L?&??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul?H?X??x?!??/򐱶?"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul?H?X??x?!Q???i<??"E
)gradient_tape/sequential/dense_9/MatMul_1MatMul?H?X??x?!ڠK=Bǹ?Q      Y@Y?h???7@a{?e?@	S@q??w?G#@yg????"?

both?Your program is POTENTIALLY input-bound because 18.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?61.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 