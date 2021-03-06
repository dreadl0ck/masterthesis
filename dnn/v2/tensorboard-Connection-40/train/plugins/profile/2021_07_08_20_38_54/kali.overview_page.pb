?	?Q??Z?@?Q??Z?@!?Q??Z?@	???G@???G@!???G@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?Q??Z?@?ɧǶ??1x$(~??A#??<??I?(?A&???Y9?#+???rEagerKernelExecute 0*	\???(?l@2K
Iterator::Model::Map??	.V???!k|?U?Q@)???"???1?S?? P@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceE/?Xni??!i??k@"@)E/?Xni??1i??k@"@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?b?=y??!_Cr???$@)U???N@??1?p??h @:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?T[r??!???"W	@)?T[r??1???"W	@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateO;?5Y???!?kF??*@)???s??1?ϠGu@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?T???B??!0???;@)??ܵ?|??1???x7@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??ZӼ?t?!?I??u?@)??ZӼ?t?1?I??u?@:Preprocessing2F
Iterator::Model???^?2??!?9=??R@)??9̗g?1'b/?`??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap??k?)??!E{g?p?+@)F%u?[?1??/??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 27.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?42.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9@??G@I|(?|?Q@Q %??=]9@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?ɧǶ???ɧǶ??!?ɧǶ??      ??!       "	x$(~??x$(~??!x$(~??*      ??!       2	#??<??#??<??!#??<??:	?(?A&????(?A&???!?(?A&???B      ??!       J	9?#+???9?#+???!9?#+???R      ??!       Z	9?#+???9?#+???!9?#+???b      ??!       JGPUY@??G@b q|(?|?Q@y %??=]9@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsMN(v*??!MN(v*??"!
Cast_51Cast???O?N??!-?@ ???"&
	Greater_8Greater???O?N??!?

?"??"!
Cast_49Cast?p>!??!??$??f??"!
Cast_50Cast?p>!??!?S>?%???"!
Cast_52Cast?p>!??!?,??w??"-
LogicalAnd_12
LogicalAnd?p>!??!??8????"-
LogicalAnd_14
LogicalAnd?p>!??!??E?λ??"E
)gradient_tape/sequential/dense_7/MatMul_1MatMul?p>!??!??Ro?]??"!
Tile_23Tile&G?????!?sX???Q      Y@Y:?g *?@@a?&??j?P@q?T???@yG!??i??"?

both?Your program is POTENTIALLY input-bound because 27.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?42.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 