	"?
?l@"?
?l@!"?
?l@	5P?m??5P?m??!5P?m??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL"?
?l@????????1I??m??A?h?󊧞?I?=yX??@Y???&?+??rEagerKernelExecute 0*	?Q???Y@2F
Iterator::Model?2???y??!%?zB@)??<?;k??1?R86@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?v?ӂ??!?????;@)I?f??6??1#T?:Q6@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?PN?????!?e\)?1@)?PN?????1?e\)?1@:Preprocessing2U
Iterator::Model::ParallelMapV26?
?r??!y ٟ?y-@)6?
?r??1y ٟ?y-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate? ?X4???!Zϓ?<@)ӟ?H??1??n8?$@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??v?ӂw?!??e?qN@)??v?ӂw?1??e?qN@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipxb֋????!????{?O@)Qf?L2rv?1?>Ic?K@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapX9??v???!3? >@)C?8
a?1!9?a?* @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?57.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no95P?m??I??fgj\S@Q}??;?\5@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????????????????!????????      ??!       "	I??m??I??m??!I??m??*      ??!       2	?h?󊧞??h?󊧞?!?h?󊧞?:	?=yX??@?=yX??@!?=yX??@B      ??!       J	???&?+?????&?+??!???&?+??R      ??!       Z	???&?+?????&?+??!???&?+??b      ??!       JGPUY5P?m??b q??fgj\S@y}??;?\5@