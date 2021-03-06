?	??cw??#@??cw??#@!??cw??#@	fC?cJ??fC?cJ??!fC?cJ??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??cw??#@8gDio??1̸??????Aw???閝?IxG?j?o@Y1?*????rEagerKernelExecute 0*	I?z?gk@2K
Iterator::Model::Map??????!?@??Q@)???N?z??1???$O@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateDԷ????!?Pܛ_?0@)??????1?˭ߓR&@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?R\U?]??!!?dy?@)?R\U?]??1!?dy?@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?Op????!9Q?? @)???#0??1}?\?X?@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?r߉??!??V?@)?r߉??1??V?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::ZipX??j??!?????<@)G?ŧ x?1MM!?	b@:Preprocessing2F
Iterator::Model???????!?X???Q@)?~j?t?h?1??E????:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?m?f?!?17??)?m?f?1?17??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapӇ.?o???!]?u]?u1@)?N^?U?1?03????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 11.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?72.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9fC?cJ??I?x?9-%U@Qӣ%T?+@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	8gDio??8gDio??!8gDio??      ??!       "	̸??????̸??????!̸??????*      ??!       2	w???閝?w???閝?!w???閝?:	xG?j?o@xG?j?o@!xG?j?o@B      ??!       J	1?*????1?*????!1?*????R      ??!       Z	1?*????1?*????!1?*????b      ??!       JGPUYfC?cJ??b q?x?9-%U@yӣ%T?+@?"V
5gradient_tape/sequential/dense_19/BiasAdd/BiasAddGradBiasAddGrad7??@??!7??@??"C
%gradient_tape/sequential/dense/MatMulMatMulz????Ղ?!?X?k$???0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul??)??C??!?a???"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul=?.w?d?!`?FE+??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?ˑ?0d?!?79W????"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?ˑ?0d?!Rq+i7ܫ?"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?ˑ?0d?!˪{?ȯ?"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?ˑ?0d?!"??ơڱ?"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?ˑ?0d?!????г?"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul?ˑ?0d?!?+z?'ǵ?Q      Y@Y|?p? 7@a?`???7S@q?B?1+?@y????m??"?

both?Your program is POTENTIALLY input-bound because 11.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?72.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 