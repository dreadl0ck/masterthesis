?	A׾?^@*@A׾?^@*@!A׾?^@*@	OJ???OJ???!OJ???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLA׾?^@*@?5?U????1??'Hl?@A?`??>???I?u????@Y??8+?&??rEagerKernelExecute 0*	?G?zVj@2K
Iterator::Model::Map('?UH???!??͜s?P@)Xs?`???1?t(?L@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??Pk?w??!Q2??c*@)???????1?$aYTj%@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?k?,	P??!?|.F0?!@)?k?,	P??1?|.F0?!@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice<?????!???o?!@)<?????1???o?!@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateڬ?\mŞ?!??Ry{?,@)=???m??1?T???@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip5S"??!=Iv]??@)W	?3?z?1?7d?r?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorf?ʉvu?!%6???@)f?ʉvu?1%6???@:Preprocessing2F
Iterator::Model??<I?f??!1?m??Q@)겘?|\k?1<?hA]??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap???{????!:??)?.@)??ZӼ?d?1??9?l]??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 10.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?59.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9NJ???IcQ@Q??r?}=@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?5?U?????5?U????!?5?U????      ??!       "	??'Hl?@??'Hl?@!??'Hl?@*      ??!       2	?`??>????`??>???!?`??>???:	?u????@?u????@!?u????@B      ??!       J	??8+?&????8+?&??!??8+?&??R      ??!       Z	??8+?&????8+?&??!??8+?&??b      ??!       JGPUYNJ???b qcQ@y??r?}=@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits????YB??!????YB??"C
%gradient_tape/sequential/dense/MatMulMatMul?k?&K?q?!??I?,???0"!
Cast_50Cast??U{??l?!?V??I@??"&
	Greater_8Greater??U{??l?!:?f՛?"!
Cast_49Cast$W% uj?!?#
	$??"F
*gradient_tape/sequential/dense_67/MatMul_1MatMul$W% uj?!?4?U9??"!
Cast_51Cast́ ??tj?!?<?3????"-
LogicalAnd_13
LogicalAnd́ ??tj?!?D?懤?"-
LogicalAnd_14
LogicalAnd́ ??tj?!?L?//??"-
LogicalAnd_15
LogicalAnd́ ??tj?!?Tw֧?Q      Y@Y?rp?_?(@a???	??U@q1??QdK@y+?
29??"?

both?Your program is POTENTIALLY input-bound because 10.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?59.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 