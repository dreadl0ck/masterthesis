?	?A^&?@?A^&?@!?A^&?@	??qQVs????qQVs??!??qQVs??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?A^&?@?x?0D???1U?M?M???A(?r?w??Iap??O@Y?^F??Һ?rEagerKernelExecute 0*	???(\/[@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat????%ǝ?!)?|? ?:@)ol?`q??1??Sґ?5@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?*5{???! ?+?5@)?*5{???1 ?+?5@:Preprocessing2F
Iterator::Model?o*Ral??!??BzK?@)?K?;????1???AR3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateaO;?5Y??!J???U`A@)}????9??1?????>*@:Preprocessing2U
Iterator::Model::ParallelMapV2?%??:???!h?[?p?'@)?%??:???1h?[?p?'@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip%??1 ??!^/z!-Q@),+MJA?w?1?,<*kL@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorIh˹Wu?!???,<*@)Ih˹Wu?1???,<*@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap1%??e??!e?X ?QB@)	?^)?`?1]#e??)??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?46.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??qQVs??I9b?>Q@Q9?_)?-=@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?x?0D????x?0D???!?x?0D???      ??!       "	U?M?M???U?M?M???!U?M?M???*      ??!       2	(?r?w??(?r?w??!(?r?w??:	ap??O@ap??O@!ap??O@B      ??!       J	?^F??Һ??^F??Һ?!?^F??Һ?R      ??!       Z	?^F??Һ??^F??Һ?!?^F??Һ?b      ??!       JGPUY??qQVs??b q9b?>Q@y9?_)?-=@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits>???&??!>???&??"&
	Greater_8Greater????Ԓ?!:&iR???"!
Cast_51Cast} {Vݍ?!???x,??"!
Cast_52Cast} {Vݍ?!a??G׿??"-
LogicalAnd_13
LogicalAnd} {Vݍ?!?T?{??"!
Cast_49Casti???A???!P?L???"-
LogicalAnd_12
LogicalAndi???A???!O g@?O??"-
LogicalAnd_14
LogicalAnd?4???!??%)???"-
LogicalAnd_15
LogicalAnd0?϶?D??!????E???"!
Cast_50Castf??????!?n??l??Q      Y@Yr???u7@a}c??"S@qt[??@y?k?ag??"?

both?Your program is POTENTIALLY input-bound because 21.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?46.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 