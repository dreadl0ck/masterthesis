	4e??/@4e??/@!4e??/@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC4e??/@B?f?????19?⪲?@Ai??ᴠ?I?($???$@rEagerKernelExecute 0*	?z?G9l@2K
Iterator::Model::Map@??????!C,@??;Q@)[|
????1w?w?f:O@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??x?Z???!QH????,@)?#??????1&7??.(@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????ׁ??!??"?? @)????ׁ??1??"?? @:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2S??.???!??F?q?@)S??.???1??F?q?@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateO]?,σ??!?E?'@)??	????1?????@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zipi??Q???!:??R{q=@)0?AC?w?1?I???@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?h㈵?t?!??l5$@)?h㈵?t?1??l5$@:Preprocessing2F
Iterator::ModelN?#Ed??!q?R+??Q@)q>??n?1?˖ħ??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap:̗`??!?i0f	1)@)?????Y?1?K?2@??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 8.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?67.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?.?*??R@Q?D?T??8@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	B?f?????B?f?????!B?f?????      ??!       "	9?⪲?@9?⪲?@!9?⪲?@*      ??!       2	i??ᴠ?i??ᴠ?!i??ᴠ?:	?($???$@?($???$@!?($???$@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?.?*??R@y?D?T??8@