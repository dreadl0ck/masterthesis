?	 A?c̍@ A?c̍@! A?c̍@	=?Wv?	@=?Wv?	@!=?Wv?	@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL A?c̍@???hW!??1g׽????A??F!ɬ??I???DR@Y?J???J??rEagerKernelExecute 0*Q???l@)       =2K
Iterator::Model::Map??0_^???!?4??"?R@)&P6?
??1̤??A?P@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?NGɫ??!~e	!@)?NGɫ??1~e	!@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatE???V	??!??`"%#@)7?[ A??1???y?@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceF?2?ȉ?!??F?f@)F?2?ȉ?1??F?f@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateF????(??!?Y????%@)E?a????1b????P@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zipp%;6???!0??h7@)#??t?1<V{??x@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor7l[?? s?!4??T? @)7l[?? s?14??T? @:Preprocessing2F
Iterator::Model?_YiR
??!t?9?%S@)??E?>q?1??h????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapS??%?њ?!??섷L'@)????ŊZ?1?f?9??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 17.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?59.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9=?Wv?	@I?;??AS@Q??n??3@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???hW!?????hW!??!???hW!??      ??!       "	g׽????g׽????!g׽????*      ??!       2	??F!ɬ????F!ɬ??!??F!ɬ??:	???DR@???DR@!???DR@B      ??!       J	?J???J???J???J??!?J???J??R      ??!       Z	?J???J???J???J??!?J???J??b      ??!       JGPUY=?Wv?	@b q?;??AS@y??n??3@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul??@S??!??@S??"C
%gradient_tape/sequential/dense/MatMulMatMul?C????!|??????0"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?W?τE?!ng?"W\??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?X??D?!6??'Ö??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?X??D?!????Z??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?X??D?!4??S?g??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul?X??D?!????P??"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul?X??D?!???????"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul?X??D?!Yd1?ܐ??"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul?X??D?!?FV(???Q      Y@Y|?p? 7@a?`???7S@q-????@y:?B?pP??"?

both?Your program is POTENTIALLY input-bound because 17.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?59.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 