?	?S?*?"@?S?*?"@!?S?*?"@	?E=Z????E=Z???!?E=Z???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?S?*?"@)??Pjo??1?Cl?p??A?C??????I=b??Bg@Y?-]?6??rEagerKernelExecute 0*	]???(<[@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??G?`??!?W?b]=@)?&k?C4??1@?oGp}7@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??????!???0Z?5@)??????1???0Z?5@:Preprocessing2U
Iterator::Model::ParallelMapV2	?/?
??!^?\??,0@)	?/?
??1^?\??,0@:Preprocessing2F
Iterator::Model??e??a??!j?2?)?@)Tƿϸ??1?ʆ??-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??:?f???!?7g??@)s.?Ue߅?1?!?ll?#@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor-C??6z?!4????@)-C??6z?14????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??m?2??!eyO??5Q@) ?o_?y?1?1??!@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap'?Wʢ?!&??0?@@)???4a?1?lH????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 12.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?71.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?E=Z???I,i???T@Q???h?-@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	)??Pjo??)??Pjo??!)??Pjo??      ??!       "	?Cl?p???Cl?p??!?Cl?p??*      ??!       2	?C???????C??????!?C??????:	=b??Bg@=b??Bg@!=b??Bg@B      ??!       J	?-]?6???-]?6??!?-]?6??R      ??!       Z	?-]?6???-]?6??!?-]?6??b      ??!       JGPUY?E=Z???b q,i???T@y???h?-@?"V
5gradient_tape/sequential/dense_19/BiasAdd/BiasAddGradBiasAddGrad?>??????!?>??????"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulo?u]u???!?r?o?Y??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul#nqi??~?!3??I???"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul#nqi??~?!?$?????"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?EJ??~?!?]?UZ???"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?EJ??~?!V??Җ??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?EJ??~?!??Iq??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul?EJ??~?!盤??%??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul?EJ??~?!E@????"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul?EJ??~?!??m?X ??Q      Y@Y?18??5@a??18?S@qf͖??@y?k??VD??"?

both?Your program is POTENTIALLY input-bound because 12.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?71.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 