	$ӡ???@$ӡ???@!$ӡ???@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC$ӡ???@e??]????1%??1???A????????I??{b?	@rEagerKernelExecute 0*	     PT@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatj0?GĔ?!?(\???8@)z?Cn???1\???(\3@:Preprocessing2F
Iterator::Model??0_^???!E!ޮ?A@)?=~oӏ?1?~S?K 3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice2??%䃎?!k?Vj?V2@)2??%䃎?1k?Vj?V2@:Preprocessing2U
Iterator::Model::ParallelMapV2>?$@M-??!???U0@)>?$@M-??1???U0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??%jj??!*?%?5?>@)?M???P??1S?K k(@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?%jj٪?!^u"P@)?f??v?1??U??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?&S?r?!gfffff@)?&S?r?1gfffff@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapAJ?i??!?F?My@@)?q????_?1333333@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?56.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?k?R@Q????S>8@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	e??]????e??]????!e??]????      ??!       "	%??1???%??1???!%??1???*      ??!       2	????????????????!????????:	??{b?	@??{b?	@!??{b?	@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?k?R@y????S>8@