?	K>v(9@K>v(9@!K>v(9@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCK>v(9@U?=ϟ6??1f2?g@??A?a?????I?!?? @rEagerKernelExecute 0*	?z?G?l@2K
Iterator::Model::Map?4?8EG??!
??
S@)??v?ӂ??1??~??P@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?£?#??!Os?ŋ?"@)?£?#??1Os?ŋ?"@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??̒ 5??!܈???"@)a???)??1R??6?U@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate#-??#???!?_죙R#@)??s??Ƈ?1??L??Q@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????Kq??!1??}4S@)????Kq??11??}4S@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zipk}?Жs??!LҧI?5@)M??St$w?1?????@:Preprocessing2F
Iterator::ModelN???????!m???S@)?N?z1?s?1L*?x? @:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorvq?-p?!???_???)vq?-p?1???_???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapEGr????!@??o$@)????T?1b$8RN???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?61.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI???|S@Q??6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	U?=ϟ6??U?=ϟ6??!U?=ϟ6??      ??!       "	f2?g@??f2?g@??!f2?g@??*      ??!       2	?a??????a?????!?a?????:	?!?? @?!?? @!?!?? @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q???|S@y??6@?"C
%gradient_tape/sequential/dense/MatMulMatMul?ؠ?`??!?ؠ?`??0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?ؠ?`??!?ؠ?`??"E
)gradient_tape/sequential/dense_9/MatMul_1MatMul?߱؀?!????͚?"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul ??p?~?!f??k?:??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul???hC?~?!:] ????"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul???hC?~?!5F???"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul???hC?~?!?.?G???"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul???hC?~?![r"?E??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul???hC?~?!EޭF?/??"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul???hC?~?!/J9}???Q      Y@Y|?p? 7@a?`???7S@qԭTL?@y?R+2/???"?

both?Your program is POTENTIALLY input-bound because 16.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?61.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 