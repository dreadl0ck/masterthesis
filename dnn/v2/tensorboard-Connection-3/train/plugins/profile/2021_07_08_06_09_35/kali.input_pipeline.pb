	?]???@?]???@!?]???@	at(}?@at(}?@!at(}?@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?]???@?ɧG??1??T?Gb??AJ^?c@???IF{???@Y??Y5???rEagerKernelExecute 0*	??????s@2K
Iterator::Model::Mapݵ?|г??!D?9R@)
?8?*??1V?f6)?N@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2L??1%??!?H?C&@)L??1%??1?H?C&@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat~ƅ!Y??!??4^G$@)%??1 ??1???^? @:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicep_?Q??!Fk??O% @)p_?Q??1Fk??O% @:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?g??s???!??J)?*@)?o_???1?S ???@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip>?x??!????~?9@)?~j?t?x?1q??$?'??:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??q?@Hv?!??NCJW??)??q?@Hv?1??NCJW??:Preprocessing2F
Iterator::Model<?.9??!E??F??R@)??PN??p?1:????t??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?lV}???!????+@)ŏ1w-!_?1{???5??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?52.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9at(}?@I^PRSb_R@Qp?lS <6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?ɧG???ɧG??!?ɧG??      ??!       "	??T?Gb????T?Gb??!??T?Gb??*      ??!       2	J^?c@???J^?c@???!J^?c@???:	F{???@F{???@!F{???@B      ??!       J	??Y5?????Y5???!??Y5???R      ??!       Z	??Y5?????Y5???!??Y5???b      ??!       JGPUYat(}?@b q^PRSb_R@yp?lS <6@