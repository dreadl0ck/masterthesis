	??{??@??{??@!??{??@	_?{!d???_?{!d???!_?{!d???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??{??@sh??|???1?+g??v??A??O?ޜ?I?GB@Y?ôo?rEagerKernelExecute 0*	?p=
?c[@2U
Iterator::Model::ParallelMapV2Á?,`??!fT#b?4@)Á?,`??1fT#b?4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatN???????!3?G??7@)????????1o??FIP3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?hUM??!??l?2@)?hUM??1??l?2@:Preprocessing2F
Iterator::Model???)???!???UB@)r??????1?????'0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateY4?????!?O39??@@)??????1l7???,@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipk`??ñ?!$-?{??O@)f?ʉvu?1?:ɍ!@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??ZӼ?t?!_]??@)??ZӼ?t?1_]??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?ݰmQf??!I????JA@)F%u?[?1?k????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?52.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9_?{!d???I?^_?uR@Q姂b_e9@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	sh??|???sh??|???!sh??|???      ??!       "	?+g??v???+g??v??!?+g??v??*      ??!       2	??O?ޜ???O?ޜ?!??O?ޜ?:	?GB@?GB@!?GB@B      ??!       J	?ôo??ôo?!?ôo?R      ??!       Z	?ôo??ôo?!?ôo?b      ??!       JGPUY_?{!d???b q?^_?uR@y姂b_e9@