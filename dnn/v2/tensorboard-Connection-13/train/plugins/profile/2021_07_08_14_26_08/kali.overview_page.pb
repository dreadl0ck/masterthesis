?	?=???@?=???@!?=???@	M?ґP???M?ґP???!M?ґP???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?=???@?}i???1v?r???ADkE????I?*8??	@YP6?
?r??rEagerKernelExecute 0*	=
ףp?i@2K
Iterator::Model::Map?e?-???!0W???Q@) )"?*???1?y???O@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??Tގp??!?i΁??(@)?????^??1T?H,$@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceb???I??!,??V?%#@)b???I??1,??V?%#@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2??#0???!?r???P@)??#0???1?r???P@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate|~!<??!~\G?`?(@)???9?w?1Gq?>yv@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??ׁsFt?!?%:?H#@)??ׁsFt?1?%:?H#@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip??_????!???n<@)?N?z1?s?1?+??{@:Preprocessing2F
Iterator::Model??Y????!?;?_$?Q@)(?XQ?ih?17?H??
??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap-??#???!?.g?=?*@)d?????]?14!??????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 22.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?54.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9M?ґP???I#?UBS@Q??c6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?}i????}i???!?}i???      ??!       "	v?r???v?r???!v?r???*      ??!       2	DkE????DkE????!DkE????:	?*8??	@?*8??	@!?*8??	@B      ??!       J	P6?
?r??P6?
?r??!P6?
?r??R      ??!       Z	P6?
?r??P6?
?r??!P6?
?r??b      ??!       JGPUYM?ґP???b q#?UBS@y??c6@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???#L??!???#L??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul???|????!?nCQS6??"8
sequential/dense_19/SoftmaxSoftmax%%??a??!???U?N??"E
)gradient_tape/sequential/dense_4/MatMul_1MatMulw?k?}}?!???:???"E
)gradient_tape/sequential/dense_5/MatMul_1MatMulw?k?}}?!?wh?ײ?"E
)gradient_tape/sequential/dense_7/MatMul_1MatMulw?k?}}?!K5?ݮ??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul???%7z?!?]PR??"!
Cast_52Cast?nCQS6z?!?KqC????"-
LogicalAnd_13
LogicalAnd?nCQS6z?!???x???"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?nCQS6z?!????<??Q      Y@Y'oe??8@a?9?&?R@q!?D??@y
?[]???"?

both?Your program is POTENTIALLY input-bound because 22.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?54.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 