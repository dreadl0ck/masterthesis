	????c?@????c?@!????c?@	ū8?Z5@ū8?Z5@!ū8?Z5@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL????c?@0e??V??1?O?????AF??j????Ig???u	@Y}?X??L??rEagerKernelExecute 0*	G?z??s@2K
Iterator::Model::Map???m????!o?????S@)h??n??1]?PsVR@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatCV?zNz??!?@?Z??#@)??|?5^??1??N??m @:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2&?R?o*??!#A.?ޢ@)&?R?o*??1#A.?ޢ@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate=a??M??!?4????@)?Z?!???1??=@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceǺ?????!??(??@)Ǻ?????1??(??@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorƢ??dpt?!?Du?x??)Ƣ??dpt?1?Du?x??:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?r?]????!굋?3@)?ds?1+??c????:Preprocessing2F
Iterator::Model?H?}??!y??T@)r?&"?p?1m???H??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap	?c???!?<Vp?? @)[|
??Z?1?#?0;??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 5.6% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?53.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*high2t18.1 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9ƫ8?Z5@I?1?b??Q@Q???{?6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	0e??V??0e??V??!0e??V??      ??!       "	?O??????O?????!?O?????*      ??!       2	F??j????F??j????!F??j????:	g???u	@g???u	@!g???u	@B      ??!       J	}?X??L??}?X??L??!}?X??L??R      ??!       Z	}?X??L??}?X??L??!}?X??L??b      ??!       JGPUYƫ8?Z5@b q?1?b??Q@y???{?6@