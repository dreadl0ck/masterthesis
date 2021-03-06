?	IIC?@IIC?@!IIC?@	J?w?V"??J?w?V"??!J?w?V"??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLIIC?@O??e??1???jH???AU?t<f???Iӣ??̟	@Y?'??9x??rEagerKernelExecute 0*	)\???HT@2U
Iterator::Model::ParallelMapV2???3???!???-h?8@)???3???1???-h?8@:Preprocessing2F
Iterator::Model???V???!?:????G@)?lscz?1?|???6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatY?n?͓?!?ΏA??7@)?&p?n??1?ڡ?cP2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceû\?wb??!ȧe=??*@)û\?wb??1ȧe=??*@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?6qr?C??!?9?f?4@)cAJx?1b?	??;@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipbg
??إ?!1?C~GKJ@)Ih˹Wu?1?U^??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???מYr?!з7?@)???מYr?1з7?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapY4?????!^&??T6@)Mۿ?ҤT?1ʮޏ???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?54.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9J?w?V"??I?Z????R@Q?'&??7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	O??e??O??e??!O??e??      ??!       "	???jH??????jH???!???jH???*      ??!       2	U?t<f???U?t<f???!U?t<f???:	ӣ??̟	@ӣ??̟	@!ӣ??̟	@B      ??!       J	?'??9x???'??9x??!?'??9x??R      ??!       Z	?'??9x???'??9x??!?'??9x??b      ??!       JGPUYJ?w?V"??b q?Z????R@y?'&??7@?"!
Tile_23Tilea?-??{??!a?-??{??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulH?(Xp}??!?T???|??"C
%gradient_tape/sequential/dense/MatMulMatMul???Ǣ???!S?7??=??0"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?T?L?}?!?T??=???"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?T?L?}?!??Zҿ???"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?T?L?}?!???A|??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul?T?L?}?!Y*?????"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul?T?L?}?!???Ǣ???"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul?T?L?}?!??P?cݳ?"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul?T?L?}?!=??$???Q      Y@Y???L6@aϺ??lS@q??;??i#@y4j???l??"?

both?Your program is POTENTIALLY input-bound because 20.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?54.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 