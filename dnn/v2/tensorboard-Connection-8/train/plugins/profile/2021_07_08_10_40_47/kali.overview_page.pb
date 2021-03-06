?	??|~?@??|~?@!??|~?@	HՖ?S??HՖ?S??!HՖ?S??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??|~?@?b???1?7?n:??A???<,Ԛ?IdyW=`?	@Y???+f??rEagerKernelExecute 0*	33333Sh@2K
Iterator::Model::Map?!T????!???n?Q@)?;?D??1$N31YaN@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatR~R?????!?y?h5	)@)??SW>˓?1a????#@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice;?O??n??!	V?R?"@);?O??n??1	V?R?"@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2K<?l???!?Jt^?1@)K<?l???1?Jt^?1@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???m??!I?I??/*@)O;?5Y?~?1?T???@:Preprocessing2F
Iterator::Model?',?????!.??j?Q@)?? ???u?1ε?_?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?i?WV?t?!?a???@)?i?WV?t?1?a???@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip??鲘ج?!I??U??<@)???P?s?1fq????@:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?#EdXś?!?Xk`?+@)t^c???Z?1+?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?56.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9HՖ?S??I?7?/W'S@Q<???A6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?b????b???!?b???      ??!       "	?7?n:???7?n:??!?7?n:??*      ??!       2	???<,Ԛ????<,Ԛ?!???<,Ԛ?:	dyW=`?	@dyW=`?	@!dyW=`?	@B      ??!       J	???+f?????+f??!???+f??R      ??!       Z	???+f?????+f??!???+f??b      ??!       JGPUYHՖ?S??b q?7?/W'S@y<???A6@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsz????6??!z????6??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMulKyA?؀?!???M?l??"C
%gradient_tape/sequential/dense/MatMulMatMul??Os6؀?!?3??ݢ??0"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul??Os6؀?!????ul??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul??Os6؀?!??6?|???"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul??Os6؀?!???`????"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul??Os6؀?!??
/????"V
5gradient_tape/sequential/dense_18/BiasAdd/BiasAddGradBiasAddGrad??Os6؀?!?{t??ظ?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul??Os6؀?!?u?˗???"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul??Os6؀?!?oH????Q      Y@Y'oe??8@a?9?&?R@q???	?2@y??#D??"?

both?Your program is POTENTIALLY input-bound because 19.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?56.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 