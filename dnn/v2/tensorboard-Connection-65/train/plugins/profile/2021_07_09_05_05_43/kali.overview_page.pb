?	4e??/@4e??/@!4e??/@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC4e??/@B?f?????19?⪲?@Ai??ᴠ?I?($???$@rEagerKernelExecute 0*	?z?G9l@2K
Iterator::Model::Map@??????!C,@??;Q@)[|
????1w?w?f:O@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??x?Z???!QH????,@)?#??????1&7??.(@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????ׁ??!??"?? @)????ׁ??1??"?? @:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2S??.???!??F?q?@)S??.???1??F?q?@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateO]?,σ??!?E?'@)??	????1?????@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zipi??Q???!:??R{q=@)0?AC?w?1?I???@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?h㈵?t?!??l5$@)?h㈵?t?1??l5$@:Preprocessing2F
Iterator::ModelN?#Ed??!q?R+??Q@)q>??n?1?˖ħ??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap:̗`??!?i0f	1)@)?????Y?1?K?2@??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 8.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?67.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?.?*??R@Q?D?T??8@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	B?f?????B?f?????!B?f?????      ??!       "	9?⪲?@9?⪲?@!9?⪲?@*      ??!       2	i??ᴠ?i??ᴠ?!i??ᴠ?:	?($???$@?($???$@!?($???$@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?.?*??R@y?D?T??8@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?7+c*Y??!?7+c*Y??"&
	Greater_8GreaterWr???o?!??\vA:??"!
Cast_49Cast!%?=?l?!*?,iԗ?"!
Cast_50Cast!%?=?l?!7?%??n??"-
LogicalAnd_15
LogicalAnd!%?=?l?!Xr?????"F
*gradient_tape/sequential/dense_67/MatMul_1MatMul!%?=?l?!<??'pQ??"!
Cast_51Cast?Ͽ?j?!8??T???"-
LogicalAnd_14
LogicalAnd?Ͽ?j?!4???????"!
Cast_52Casti~Z?Gbh?!-???*??"-
LogicalAnd_12
LogicalAndi~Z?Gbh?!?Z~????Q      Y@Y?rp?_?(@a???	??U@q+???A?@y`x??????"?

both?Your program is POTENTIALLY input-bound because 8.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?67.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 