	?A^&?@?A^&?@!?A^&?@	??qQVs????qQVs??!??qQVs??"?
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
	?x?0D????x?0D???!?x?0D???      ??!       "	U?M?M???U?M?M???!U?M?M???*      ??!       2	(?r?w??(?r?w??!(?r?w??:	ap??O@ap??O@!ap??O@B      ??!       J	?^F??Һ??^F??Һ?!?^F??Һ?R      ??!       Z	?^F??Һ??^F??Һ?!?^F??Һ?b      ??!       JGPUY??qQVs??b q9b?>Q@y9?_)?-=@