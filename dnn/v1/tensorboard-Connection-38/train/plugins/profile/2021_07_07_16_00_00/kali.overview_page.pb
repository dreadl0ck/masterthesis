?	33333S@33333S@!33333S@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC33333S@/n????1,??????A"??T2 ??I ?C??@rEagerKernelExecute 0*	^???(?Z@2F
Iterator::Model$0??{??!w?z??3F@){???ɚ?1EU-?J8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?L??ݜ?!??//O-:@)???eN??1!?:~"5@:Preprocessing2U
Iterator::Model::ParallelMapV2<???	.??!?o?s 4@)<???	.??1?o?s 4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????g???!????(?0@)????g???1????(?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?r߉??!????(7@)?=\r?)}?1?T?x?r@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?-???=v?!LFC?C+@)?-???=v?1LFC?C+@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???G???!?%?/!?K@)Ih˹Wu?1RDfZ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapB?L????!?CI?n?8@)oӟ?HY?1?υ?^???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?52.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noII????Q@Q?^?k$<@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	/n????/n????!/n????      ??!       "	,??????,??????!,??????*      ??!       2	"??T2 ??"??T2 ??!"??T2 ??:	 ?C??@ ?C??@! ?C??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qI????Q@y?^?k$<@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulը?]?_??!ը?]?_??"C
%gradient_tape/sequential/dense/MatMulMatMul'??Bq΂?!~?#P???0"F
*gradient_tape/sequential/dense_17/MatMul_1MatMulyg?'==??!:L
??5??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul???X?!?w?5???"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul???X?!??yx????"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul???X?!6???۩?"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul???X?!?l???ƭ?"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul???X?!N_!?ذ?"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul???X?!'??Bqβ?"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul???X?! ?Nd?ô?Q      Y@Y???L6@aϺ??lS@q?ם???"@y?~,$?|??"?

both?Your program is POTENTIALLY input-bound because 19.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
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