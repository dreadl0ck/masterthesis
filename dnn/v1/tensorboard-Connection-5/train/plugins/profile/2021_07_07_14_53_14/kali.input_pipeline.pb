	?JU?@?JU?@!?JU?@	?\>??@?\>??@!?\>??@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?JU?@???????1??oHc??AK?=?U??I<??k?@Y??S?*??rEagerKernelExecute 0*	??????^@2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??K?u??!?I'?_9@@)F??j????1u??	??5@:Preprocessing2F
Iterator::Model?{???!^?5?SB@)9(a??_??1L??u.4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatGɫsȞ?!mZ&?h8@)ض(?A&??1??r?3@:Preprocessing2U
Iterator::Model::ParallelMapV2??x@ٔ?!re??]?0@)??x@ٔ?1re??]?0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??ݓ????!???? %@)??ݓ????1???? %@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipF?v???!??(?9?O@)?)??sx?1???d@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?I+?v?!cY?H?@)?I+?v?1cY?H?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?,g~??!zV@KTA@)?p>??`?1s?!#?>??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?62.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?\>??@I?Y>iٷS@Q)?:?2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??????????????!???????      ??!       "	??oHc????oHc??!??oHc??*      ??!       2	K?=?U??K?=?U??!K?=?U??:	<??k?@<??k?@!<??k?@B      ??!       J	??S?*????S?*??!??S?*??R      ??!       Z	??S?*????S?*??!??S?*??b      ??!       JGPUY?\>??@b q?Y>iٷS@y)?:?2@