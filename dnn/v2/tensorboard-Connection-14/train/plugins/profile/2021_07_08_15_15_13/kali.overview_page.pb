?	?@j7@?@j7@!?@j7@	?ٷ?????ٷ????!?ٷ????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?@j7@???1~??ŉ/??A?^?D??IG?(?@Yt??z?Ѧ?rEagerKernelExecute 0*	{?G?jV@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatB`??"ۙ?!0}i?(<@)Ih˹W??1,? 7?=7@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice+5{???!A(\??3@)+5{???1A(\??3@:Preprocessing2U
Iterator::Model::ParallelMapV2?o%;6??!V??t?2@)?o%;6??1V??t?2@:Preprocessing2F
Iterator::Model?ȓ?k&??!?͌dR?@@)F???jH??1?  ?D?.@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate_A??h:??!?L8T6?=@)j>"?D??1?HL?)?#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?t?V??!???քP@)M?O?t?1|&dT??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??g\8r?!?Oq??@)??g\8r?1?Oq??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?u?????!>(\|$@@)??1ZGUc?1??? @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 17.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?60.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?ٷ????I???Qo?S@QH?{C5@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??????!???      ??!       "	~??ŉ/??~??ŉ/??!~??ŉ/??*      ??!       2	?^?D???^?D??!?^?D??:	G?(?@G?(?@!G?(?@B      ??!       J	t??z?Ѧ?t??z?Ѧ?!t??z?Ѧ?R      ??!       Z	t??z?Ѧ?t??z?Ѧ?!t??z?Ѧ?b      ??!       JGPUY?ٷ????b q???Qo?S@yH?{C5@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits=??~.??!=??~.??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulԂ?P>??!?p?????"8
sequential/dense_19/SoftmaxSoftmax???˾??!?Z??m???"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul_;ս?|?!=?<????"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul_;ս?|?!.????z??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul_;ս?|?!O?z?I??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul_;ս?|?!8Xf??"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul_;ս?|?!??52???"E
)gradient_tape/sequential/dense_6/MatMul_1MatMul_;ս?|?!?p?????"E
)gradient_tape/sequential/dense_8/MatMul_1MatMul_;ս?|?!?&3?Ʉ??Q      Y@Yr???u7@a}c??"S@q???`?!@yL4n???"?

both?Your program is POTENTIALLY input-bound because 17.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?60.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 