?	1??c80@1??c80@!1??c80@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC1??c80@?-z(??1P?Lۿ?@A?߄B??Ic	kc??%@rEagerKernelExecute 0*	fffff?Z@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?!7????!? j? j:@)+??Η?1Hl?Gl?5@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?\?????!????2@)?\?????1????2@:Preprocessing2U
Iterator::Model::ParallelMapV2??? ?X??!Q??P??2@)??? ?X??1Q??P??2@:Preprocessing2F
Iterator::ModelU???N@??!??????A@)?ߡ(?'??1??????0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?S ?gР?!絩浩>@)?'I?L???10y0y'@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?n??ʱ?!? 9? 9P@)?҇.?oy?1?z1?z1@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorMۿ?Ҥt?!??????@)Mۿ?Ҥt?1??????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?Q?????!?W?W@@)??+ٱa?1?k"?k" @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 9.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?66.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?????S@Q??I\E?7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?-z(???-z(??!?-z(??      ??!       "	P?Lۿ?@P?Lۿ?@!P?Lۿ?@*      ??!       2	?߄B???߄B??!?߄B??:	c	kc??%@c	kc??%@!c	kc??%@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?????S@y??I\E?7@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??????!??????"C
%gradient_tape/sequential/dense/MatMulMatMul??]??q?!?Ë?A???0"F
*gradient_tape/sequential/dense_67/MatMul_1MatMul???b?o?!?w?ݗ?"!
Cast_49Cast?[@???l?!u*??sy??"!
Cast_50Cast?[@???l?!?5?%??"&
	Greater_8Greater?[@???l?!? P>MX??"-
LogicalAnd_15
LogicalAnd?[@???l?!i&??&??"!
Cast_51Castmޝ@?j?!P~?ZФ?"-
LogicalAnd_13
LogicalAndmޝ@?j?!7?7??z??"-
LogicalAnd_14
LogicalAndmޝ@?j?!????$??Q      Y@Y???cj`'@a?O???V@qP????^&@y>a~0???"?
both?Your program is POTENTIALLY input-bound because 9.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?66.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?11.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 