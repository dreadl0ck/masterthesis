?	c????@c????@!c????@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCc????@YiR
?=??1m˟o??Ab֋??h??I7?^??
@rEagerKernelExecute 0*	?(\???Z@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???????!:9?y??:@)?g?RD???17??v??3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceL???<??!?V???F3@)L???<??1?V???F3@:Preprocessing2U
Iterator::Model::ParallelMapV2???4cє?!O?S?2@)???4cє?1O?S?2@:Preprocessing2F
Iterator::Modelr?)????!$'??&B@)Y???-??1C?(S?h1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?0????!My?Ŧ?>@)J+???1JE`???&@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??W???!	???8@)??W???1	???8@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipA}˜.???!???~?O@)׆?q?&t?1?n?i?J@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap*Ral!ȡ?!k?t?#@@)?"??\?1?8>B???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?57.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI^??4}NS@Q??5,?6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	YiR
?=??YiR
?=??!YiR
?=??      ??!       "	m˟o??m˟o??!m˟o??*      ??!       2	b֋??h??b֋??h??!b֋??h??:	7?^??
@7?^??
@!7?^??
@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q^??4}NS@y??5,?6@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?l??!?l??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul3??????!ՉN?3??"C
%gradient_tape/sequential/dense/MatMulMatMul?,
#u??!Ռ"???0"8
sequential/dense_19/SoftmaxSoftmaxc?c???!??lIlD??"F
*gradient_tape/sequential/dense_15/MatMul_1MatMulՌ"?|?!Mquj~??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMulՌ"?|?!?>~??ֳ?"F
*gradient_tape/sequential/dense_17/MatMul_1MatMulՌ"?|?!???????"E
)gradient_tape/sequential/dense_2/MatMul_1MatMulՌ"?|?!@ُʹh??"E
)gradient_tape/sequential/dense_6/MatMul_1MatMulՌ"?|?!?????1??"E
)gradient_tape/sequential/dense_9/MatMul_1MatMulf?63[ey?!̡Ⱥ?Q      Y@Yr???u7@a}c??"S@q?????@yE?]?4???"?

both?Your program is POTENTIALLY input-bound because 19.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?57.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 