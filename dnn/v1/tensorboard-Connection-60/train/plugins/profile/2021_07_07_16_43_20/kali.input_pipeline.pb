	h?
?@h?
?@!h?
?@	?4ibZ????4ibZ???!?4ibZ???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLh?
?@??1?M#??1???7/N??A?{F"4???I?ᔹ?@Y??je?/??rEagerKernelExecute 0*y?G?2k@)       =2K
Iterator::Model::Map?q?Z|
??!?Y?-6?Q@)?-?l?I??1??@@jP@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceo/i??Q??!???u##@)o/i??Q??1???u##@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat(?r?w??!?????&@)??D????1wvU`??"@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2???߾??!????Z/@)???߾??1????Z/@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?	ܺ????!3????'@)Ih˹Wu?1?%|8?'@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?ui????!dUA?:@)???P?s?1w???S?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?Q,??r?!?X??0@ @)?Q,??r?1?X??0@ @:Preprocessing2F
Iterator::Model_F???j??!繹??SR@)?*5{?h?1X:_???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapd?]K???!:???*@)?dc?1.?7pB??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?63.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?4ibZ???I4??zT@Q^??؁3@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??1?M#????1?M#??!??1?M#??      ??!       "	???7/N?????7/N??!???7/N??*      ??!       2	?{F"4????{F"4???!?{F"4???:	?ᔹ?@?ᔹ?@!?ᔹ?@B      ??!       J	??je?/????je?/??!??je?/??R      ??!       Z	??je?/????je?/??!??je?/??b      ??!       JGPUY?4ibZ???b q4??zT@y^??؁3@