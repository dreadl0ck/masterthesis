	??;??@??;??@!??;??@	<iw?@<iw?@!<iw?@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??;??@5?Ry;B??1????K??ARf`X??I???`@Yq??Ŧ??rEagerKernelExecute 0*	??Q?&q@2K
Iterator::Model::Map?aod??!?d???R@)?3??7??1?????<Q@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???0B??!?/?)?C!@)???0B??1?/?)?C!@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?~?T??!q=,d?!@)????m???1??I+p@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2/?o??e??!QRdW??@)/?o??e??1QRdW??@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate o?ŏ??!????(@){?????1?e:?A?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip??kCŰ?!?/?QF?7@)Ϡ???u?1N?????:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor7l[?? s?!?h?<t:??)7l[?? s?1?h?<t:??:Preprocessing2F
Iterator::Model?W?????!4?k.S@)??q?@Hf?1??·??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?»\?w??!????I*@)wJ??\?1Ս~)У??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 5.5% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?54.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*high2t17.6 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9<iw?@I? ?`?R@Q4??-p6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	5?Ry;B??5?Ry;B??!5?Ry;B??      ??!       "	????K??????K??!????K??*      ??!       2	Rf`X??Rf`X??!Rf`X??:	???`@???`@!???`@B      ??!       J	q??Ŧ??q??Ŧ??!q??Ŧ??R      ??!       Z	q??Ŧ??q??Ŧ??!q??Ŧ??b      ??!       JGPUY<iw?@b q? ?`?R@y4??-p6@