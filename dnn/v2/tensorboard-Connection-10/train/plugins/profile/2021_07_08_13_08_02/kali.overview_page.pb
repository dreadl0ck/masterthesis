?	,cC7?@,cC7?@!,cC7?@	?*?????*????!?*????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL,cC7?@qU?wEp??1??^????A׽?	j??Ij?TQ?J@YN??????rEagerKernelExecute 0*23333X@)      =2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?@H0???!??[bZ?;@)I?2?喖?1??1W?6@:Preprocessing2F
Iterator::Model?P?f???!?%?E~?B@)'???????1??8??86@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice333333??!??vlx3@)333333??1??vlx3@:Preprocessing2U
Iterator::Model::ParallelMapV2??9z???!??&?1l/@)??9z???1??&?1l/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateN???????!x>G??D;@)m?IF??~?1h??1@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensora2U0*?s?!ǆ???@)a2U0*?s?1ǆ???@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?W?f,???!@?Y??O@)?N?z1?s?1&??p??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[%XΜ?!? *??5=@)O;?5Y?^?1? ,????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?57.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?*????Ilex??GS@Q?X?q?)6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	qU?wEp??qU?wEp??!qU?wEp??      ??!       "	??^??????^????!??^????*      ??!       2	׽?	j??׽?	j??!׽?	j??:	j?TQ?J@j?TQ?J@!j?TQ?J@B      ??!       J	N??????N??????!N??????R      ??!       Z	N??????N??????!N??????b      ??!       JGPUY?*????b qlex??GS@y?X?q?)6@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?8?Rl???!?8?Rl???"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulLhkeN???!? ????"C
%gradient_tape/sequential/dense/MatMulMatMul?^J?$??!??R???0"8
sequential/dense_19/SoftmaxSoftmax?^J?$??!0?R$f???"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul0?(??}?!?,?oO\??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul??R?}?!?WJ?+-??"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul??R?}?!9??2???"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul??R?}?!䬔??η?"E
)gradient_tape/sequential/dense_6/MatMul_1MatMul??R?}?!??9?????"E
)gradient_tape/sequential/dense_7/MatMul_1MatMul??R?}?!:?W?p??Q      Y@Y?h???7@a{?e?@	S@q0Lr?@y'4??f8??"?

both?Your program is POTENTIALLY input-bound because 19.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?57.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 