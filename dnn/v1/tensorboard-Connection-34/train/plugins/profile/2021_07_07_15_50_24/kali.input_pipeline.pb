	????H?@????H?@!????H?@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC????H?@Û5x_??1g???d??A!!?????I?_ ?!@rEagerKernelExecute 0*	q=
ף`T@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?++MJA??!T?כ??;@)v?ꭁ???19 2ܫ`6@:Preprocessing2U
Iterator::Model::ParallelMapV2?:pΈ??!????46@)?:pΈ??1????46@:Preprocessing2F
Iterator::ModelS"?^F??!ɖِd?D@)??	????1?x??03@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???5??!"-Uب -@)???5??1"-Uب -@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???&??!?\?$?6@)???3.|?1?d?? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?u7Ou??!6i&o?MM@)?3??k?r?1?j?o?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?}"Or?!n0????@)?}"Or?1n0????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap<?.9???!iKy&?9@)?"??\?1???x?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?65.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIi?c?1nT@Q[rp?9G2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	Û5x_??Û5x_??!Û5x_??      ??!       "	g???d??g???d??!g???d??*      ??!       2	!!?????!!?????!!!?????:	?_ ?!@?_ ?!@!?_ ?!@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qi?c?1nT@y[rp?9G2@