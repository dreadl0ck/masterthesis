?	h??`o?@h??`o?@!h??`o?@	?׻??????׻?????!?׻?????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLh??`o?@:[@h=<??1??
E???AG????g??I???͎?	@YJΉ=????rEagerKernelExecute 0*	?Q??KZ@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?U+~???!(n?u?e=@)|~!<??1?xdе[8@:Preprocessing2U
Iterator::Model::ParallelMapV2?,g~??!c? ???3@)?,g~??1c? ???3@:Preprocessing2F
Iterator::Model??V?c??!??| ? B@)~oӟ?H??1qt?0v0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??镲??!??????/@)??镲??1??????/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?ʦ\???!?_?/?;@)(D?!T???1^??i?'@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?g??s?u?!??۔?'@)?g??s?u?1??۔?'@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipA??h:;??!b??]?O@)/?r?]?t?1??^ϔ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?8
??!J??U??=@)/n??b?1?Y?A?? @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 22.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?56.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?׻?????I?L???S@Q??vu4@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	:[@h=<??:[@h=<??!:[@h=<??      ??!       "	??
E?????
E???!??
E???*      ??!       2	G????g??G????g??!G????g??:	???͎?	@???͎?	@!???͎?	@B      ??!       J	JΉ=????JΉ=????!JΉ=????R      ??!       Z	JΉ=????JΉ=????!JΉ=????b      ??!       JGPUY?׻?????b q?L???S@y??vu4@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsq?vi???!q?vi???"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?	?}?2??!Xs*z??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMulXs*zy?!???8S???"F
*gradient_tape/sequential/dense_11/MatMul_1MatMulXs*zy?!.?[?د?"F
*gradient_tape/sequential/dense_13/MatMul_1MatMulXs*zy?!L/=?냱?"F
*gradient_tape/sequential/dense_15/MatMul_1MatMulXs*zy?!?֟Ќ??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMulXs*zy?!?}?-???"E
)gradient_tape/sequential/dense_2/MatMul_1MatMulXs*zy?!?$e??J??"E
)gradient_tape/sequential/dense_3/MatMul_1MatMulXs*zy?!$??p???"E
)gradient_tape/sequential/dense_4/MatMul_1MatMulXs*zy?!Zs*z??Q      Y@Y?h???7@a{?e?@	S@q*Q?%D?!@yr?*?o??"?

both?Your program is POTENTIALLY input-bound because 22.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?56.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 