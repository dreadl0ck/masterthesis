	y??[Yr@y??[Yr@!y??[Yr@	?s?:???s?:??!?s?:??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLy??[Yr@?L2r???1֪]????AF?6?X??I[[x^*?@Y??-?|???rEagerKernelExecute 0*	?p=
??g@2K
Iterator::Model::Map6?U?????!??N??QQ@)~t??gy??1?/t@?CO@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat$???~???!??f?Ԯ+@)<???	.??1??3?t?&@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??4)ݎ?!?y??&?@)??4)ݎ?1?y??&?@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2p_?Q??!??Kq @)p_?Q??1??Kq @:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate#??<??!?!?`y?'@).s?,&6?1??d?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?M?»??!???<?z=@)?0?*u?1?	?f^?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?O?I?5s?!?^?8??@)?O?I?5s?1?^?8??@:Preprocessing2F
Iterator::Model?v??/??!????P?Q@)??1ZGUc?1y?0]????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapgaO;?5??!]y?)??)@);?f??_?1)?
J?8??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?58.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?s?:??I_? 7hQS@QOS?tY6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?L2r????L2r???!?L2r???      ??!       "	֪]????֪]????!֪]????*      ??!       2	F?6?X??F?6?X??!F?6?X??:	[[x^*?@[[x^*?@![[x^*?@B      ??!       J	??-?|?????-?|???!??-?|???R      ??!       Z	??-?|?????-?|???!??-?|???b      ??!       JGPUY?s?:??b q_? 7hQS@yOS?tY6@