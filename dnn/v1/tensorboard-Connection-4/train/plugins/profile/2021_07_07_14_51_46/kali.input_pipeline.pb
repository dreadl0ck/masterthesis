	ɑ???{@ɑ???{@!ɑ???{@	[?p?????[?p?????![?p?????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLɑ???{@/?r?]???1D?K?K???A??~?n??I3?<Fy?@Yq?GR?à?rEagerKernelExecute 0*	??(\??U@2U
Iterator::Model::ParallelMapV2'?UH?I??!&?ɝw?7@)'?UH?I??1&?ɝw?7@:Preprocessing2F
Iterator::Model?k	??g??!S??E@)L???H???1t?h\}3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat/?$???!???L??7@)닄??K??12??75=3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?[[%??!??,??*@)?[[%??1??,??*@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?++MJA??!S?JY?9@)????9]??1#???(@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipA}˜.???!????jL@)C?8
q?1???N?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??b???p?!3&fS??@)??b???p?13&fS??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??4?R??!+Ƕd+<@)?p>??`?1???Vh@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?66.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9[?p?????IB*ܗ}?T@Q쓉??1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	/?r?]???/?r?]???!/?r?]???      ??!       "	D?K?K???D?K?K???!D?K?K???*      ??!       2	??~?n????~?n??!??~?n??:	3?<Fy?@3?<Fy?@!3?<Fy?@B      ??!       J	q?GR?à?q?GR?à?!q?GR?à?R      ??!       Z	q?GR?à?q?GR?à?!q?GR?à?b      ??!       JGPUY[?p?????b qB*ܗ}?T@y쓉??1@