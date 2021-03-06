?	?????B@?????B@!?????B@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?????B@C?O?}:??1VfJ?o???AF;?I??I??I?@rEagerKernelExecute 0*	>
ףp-s@2K
Iterator::Model::Map?)"?*??!$ k??3S@)?$z?r??1???ҽxQ@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?9d?w??!]P(??$@)N^????1۾_?:R @:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2U?wE????!???}N?@)U?wE????1???}N?@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice\???4??!???C?@)\???4??1???C?@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?[Ɏ?@??!?;?s??!@)??[?t??1???14@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?L????!yZ?/?5@)$EdX?y?1L??5????:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???eNw?!?DV????)???eNw?1?DV????:Preprocessing2F
Iterator::Model?W?????!?a)4?S@)???מYr?1g?oW\??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapS"???!?%ӿ?o#@)j>"?Db?1t?~¤A??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?66.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?2????T@Q?4??991@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	C?O?}:??C?O?}:??!C?O?}:??      ??!       "	VfJ?o???VfJ?o???!VfJ?o???*      ??!       2	F;?I??F;?I??!F;?I??:	??I?@??I?@!??I?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?2????T@y?4??991@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulʺi?>???!ʺi?>???"C
%gradient_tape/sequential/dense/MatMulMatMul??I??!?@?4de??0"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul??I??!??7?M??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul??I??!p???????"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul??I??!5?U???"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul??I??!????;???"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul??I??!/?(^w??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul??I??!⤟H?5??"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul??I??!??/}?/??"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul??I??!vV???)??Q      Y@Y|?p? 7@a?`???7S@q_#?4?? @y?3u???"?

both?Your program is POTENTIALLY input-bound because 16.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?66.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 