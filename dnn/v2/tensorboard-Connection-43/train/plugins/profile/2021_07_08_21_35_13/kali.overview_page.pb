?	?{/??@?{/??@!?{/??@	
ߓ.X*??
ߓ.X*??!
ߓ.X*??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?{/??@P?>?B??1K????A?߽?Ƅ??IT??$[=@Y_z?sѐ??rEagerKernelExecute 0*	?
ףp?k@2K
Iterator::Model::Map$???????!???ژQ@)t???מ??1?M?7:O@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceHP?s??!??H?L?$@)HP?s??1??H?L?$@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat)\???(??!????(@)bX9?Ȗ?1?!?P0$@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2~5????!?n?I?@)~5????1?n?I?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip??	????!鬜??a<@)0?AC?w?1I?6??e@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor/?$?u?!??r??@)/?$?u?1??r??@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateh?RD?U??!ώ?K)@)D? ??s?1ְ???O@:Preprocessing2F
Iterator::Model\???4??!??_??Q@)??+H3f?1??-?????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?????%??!????o?*@)wJ??\?1? G???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?53.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9
ߓ.X*??Ix>?R@Q.??`?6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	P?>?B??P?>?B??!P?>?B??      ??!       "	K????K????!K????*      ??!       2	?߽?Ƅ???߽?Ƅ??!?߽?Ƅ??:	T??$[=@T??$[=@!T??$[=@B      ??!       J	_z?sѐ??_z?sѐ??!_z?sѐ??R      ??!       Z	_z?sѐ??_z?sѐ??!_z?sѐ??b      ??!       JGPUY
ߓ.X*??b qx>?R@y.??`?6@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsEi ?l???!Ei ?l???"!
Cast_51Cast?a????!?i????"!
Cast_52Cast?a????!h??;???"&
	Greater_8Greater?a????!K?Ԟ?2??"-
LogicalAnd_13
LogicalAnd?v?????!%???lF??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?v?????!?pH/Z??"!
Cast_49Cast?Y?K???!?E???"-
LogicalAnd_12
LogicalAnd?Y?K???!??E?@???"-
LogicalAnd_14
LogicalAnd?Y?K???!_?ָ????"-
LogicalAnd_15
LogicalAnd?Y?K???!??grj[??Q      Y@Yt?E]?=@a??.???Q@q]E?_?@ybIo????"?

both?Your program is POTENTIALLY input-bound because 21.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?53.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 