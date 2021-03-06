?	??P?vh!@??P?vh!@!??P?vh!@	? ???@? ???@!? ???@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??P?vh!@Ƥ????1 ?d?F`??A??ׁsF??I?v???@Y8???LM??rEagerKernelExecute 0*	?G?zPq@2K
Iterator::Model::Mapz???3K??!??黎R@)????S??1&???_rP@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?G?`๗?!lL?8? @)?G?`๗?1lL?8? @:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatl>????!?1ֳ]$@)AH0?[??1?
??w @:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicef??a?֔?!:???b@)f??a?֔?1:???b@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?L????!A$; ?(@)_{fI????1Gb?4??@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??_vOv?!Ј?0??)??_vOv?1Ј?0??:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip???N?z??!?{???8@)8?*5{?u?1Ņ,B?~??:Preprocessing2F
Iterator::Model???Q???!? ???R@)??#?Gk?1^???;??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapr?t??ϡ?!???D?)@)?????W?1$tXDĿ??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 11.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?68.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9? ???@I???k)T@Q??0Ӳ.@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	Ƥ????Ƥ????!Ƥ????      ??!       "	 ?d?F`?? ?d?F`??! ?d?F`??*      ??!       2	??ׁsF????ׁsF??!??ׁsF??:	?v???@?v???@!?v???@B      ??!       J	8???LM??8???LM??!8???LM??R      ??!       Z	8???LM??8???LM??!8???LM??b      ??!       JGPUY? ???@b q???k)T@y??0Ӳ.@?"C
%gradient_tape/sequential/dense/MatMulMatMul5??\ ??!5??\ ??0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?k*???!(V??T??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMulw-?????!?!ȿFL??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?	???!P?]&"??"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul?	???!C??[)??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?	???!???Y,??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul?	???!??W/??"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul?	???!?&?*???"E
)gradient_tape/sequential/dense_7/MatMul_1MatMul?	???!"??????"E
)gradient_tape/sequential/dense_9/MatMul_1MatMul?	???!?e?(???Q      Y@Y|?p? 7@a?`???7S@qG???Y@ycZ	q???"?

both?Your program is POTENTIALLY input-bound because 11.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?68.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 