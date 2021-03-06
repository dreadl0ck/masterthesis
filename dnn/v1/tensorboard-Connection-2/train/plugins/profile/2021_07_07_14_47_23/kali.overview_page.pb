?	?ۼq?@?ۼq?@!?ۼq?@	^?-????^?-????!^?-????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?ۼq?@0?r.???1??-???A??h>???I??w?@YPQ?+???rEagerKernelExecute 0*	??Q?>[@2U
Iterator::Model::ParallelMapV2??Q?Q??!.?F??4@)??Q?Q??1.?F??4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat겘?|\??!??׳??8@)???????1?7S3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?ݓ??Z??!???W1@)?ݓ??Z??1???W1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??~?T???!!@St?@@)Yni5$???1A??10@:Preprocessing2F
Iterator::ModelY?8??m??!]?M]NB@)&6׆???11???o/@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensoreS??.w?!???B?@)eS??.w?1???B?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??:???!?????O@)?????q?14??#??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapH0?[w??!??㥍qA@)?	.V?`Z?1??xT*???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?63.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9^?-????I?6??S@Q?F?22w2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	0?r.???0?r.???!0?r.???      ??!       "	??-?????-???!??-???*      ??!       2	??h>?????h>???!??h>???:	??w?@??w?@!??w?@B      ??!       J	PQ?+???PQ?+???!PQ?+???R      ??!       Z	PQ?+???PQ?+???!PQ?+???b      ??!       JGPUY^?-????b q?6??S@y?F?22w2@?"V
5gradient_tape/sequential/dense_18/BiasAdd/BiasAddGradBiasAddGradu???96??!u???96??"V
5gradient_tape/sequential/dense_19/BiasAdd/BiasAddGradBiasAddGrad@???????!JN?EY??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulKN?EY??!????/??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul՟??a?~?!ص??????"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul՟??a?~?!??
?a??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul՟??a?~?!??Z)JO??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul՟??a?~?!㘧H?<??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul՟??a?~?!???g*??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul՟??a?~?!?lA?|??"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul՟??a?~?!?V?????Q      Y@Y???L6@aϺ??lS@q????~?#@y?lA?|??"?

both?Your program is POTENTIALLY input-bound because 15.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?63.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 