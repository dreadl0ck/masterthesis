?	#I??@#I??@!#I??@	?B???(???B???(??!?B???(??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL#I??@DOʤ?v??1??z?<$??A+??Η?I?F? ?@Y??H?,|??rEagerKernelExecute 0*	??????]@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat;pΈ?ޠ?!??)??)<@) $?????1?A?A7@:Preprocessing2U
Iterator::Model::ParallelMapV20*??D??!?A?A4@)0*??D??1?A?A4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??ZӼ???!??o??o1@)??ZӼ???1??o??o1@:Preprocessing2F
Iterator::Modelf?ʉv??!????A@)?P??C???1S2%S2%/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???E_??!??????<@)hyܝ???1? ? '@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipl?`q8??!??
??
P@)?'?>?y?1VUUUUU@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorV?F???x?!?C=?C=@)V?F???x?1?C=?C=@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??,`??!?ڬ?ڬ>@)X??j`?1۬?ڬ???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?57.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?B???(??I?7I\??R@Q?????6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	DOʤ?v??DOʤ?v??!DOʤ?v??      ??!       "	??z?<$????z?<$??!??z?<$??*      ??!       2	+??Η?+??Η?!+??Η?:	?F? ?@?F? ?@!?F? ?@B      ??!       J	??H?,|????H?,|??!??H?,|??R      ??!       Z	??H?,|????H?,|??!??H?,|??b      ??!       JGPUY?B???(??b q?7I\??R@y?????6@?"C
%gradient_tape/sequential/dense/MatMulMatMul??Un??!??Un??0"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul??Un??!??Un??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul??Un??!j?Ğ%??"E
)gradient_tape/sequential/dense_7/MatMul_1MatMul?D̴??!M???	??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul??y?T??!??a.???"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul??y?T??!?G??X???"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul??y?T??!??ə????"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul??y?T??!`??p??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul??y?T??!/??h?k??"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul??y?T??!J?˶g??Q      Y@Y???L6@aϺ??lS@q?2?~??@y?C??????"?

both?Your program is POTENTIALLY input-bound because 18.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?57.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 