?	?_ѭG@?_ѭG@!?_ѭG@	"?*????"?*????!"?*????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?_ѭG@????)??1A?v??A??`"??I?k*@Y=e5]Ot??rEagerKernelExecute 0*	??Q?%Z@2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????9]??!?]K/?4@)????9]??1?]K/?4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??%jj??!??$???7@)?0??????1[,?HN3@:Preprocessing2F
Iterator::Model+5{???!DЪ{j?@@)ۿ?Ҥ??1ܪUN?2@:Preprocessing2U
Iterator::Model::ParallelMapV2z?Cn???!W?}D.@)z?Cn???1W?}D.@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??&S??!????A@)&jj?Z??1?g??mG-@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?5?o????!ޗ*?J?P@)Qf?L2rv?1?????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensore?I)??r?!ê?|?@)e?I)??r?1ê?|?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?1?????!C?+	?B@)?n??S]?1?1?l?b??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?52.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9#?*????I	?WI VR@Q+??Z?:@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????)??????)??!????)??      ??!       "	A?v??A?v??!A?v??*      ??!       2	??`"????`"??!??`"??:	?k*@?k*@!?k*@B      ??!       J	=e5]Ot??=e5]Ot??!=e5]Ot??R      ??!       Z	=e5]Ot??=e5]Ot??!=e5]Ot??b      ??!       JGPUY#?*????b q	?WI VR@y+??Z?:@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsD?r?Z??!D?r?Z??"C
%gradient_tape/sequential/dense/MatMulMatMulubр8??!?ڦ4Gީ?0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul??????!fë?u???"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul???;z???!?y?
c??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul???;z???!,C^ف??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul???;z???!h???????"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul???;z???!?B0?w???"E
)gradient_tape/sequential/dense_8/MatMul_1MatMul???;z???!?ڦ4G޹?"E
)gradient_tape/sequential/dense_1/MatMul_1MatMulgë?u?~?!????ƻ?"F
*gradient_tape/sequential/dense_10/MatMul_1MatMulgë?u?~?!LS|?U???Q      Y@Y?h???7@a{?e?@	S@q???K[@y?nJ????"?

both?Your program is POTENTIALLY input-bound because 21.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?52.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 