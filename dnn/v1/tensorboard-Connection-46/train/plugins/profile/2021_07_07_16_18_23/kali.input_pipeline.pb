	z????@z????@!z????@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCz????@?zk`???11}?!8???AP:?`????I?o*Ra@rEagerKernelExecute 0*	?(\???Y@2F
Iterator::ModeljM??S??!?5??HAC@)???KqU??1??I??7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatʉvR??!~?'??<@)ˡE?????1J????3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice o?ŏ??!?Ù?͢0@) o?ŏ??1?Ù?͢0@:Preprocessing2U
Iterator::Model::ParallelMapV2O;?5Y???!?J?\?-@)O;?5Y???1?J?\?-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???3.??!FsFo??:@)L???<??1o_Y?K$@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?P??C???!i?@7??!@)?P??C???1i?@7??!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip|???S:??!?K??N@)?ds?1??|?? @:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?L?֝?!?QV|=D<@)????ŊZ?1???Р$??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?59.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?v?u??R@Q%?(: 8@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?zk`????zk`???!?zk`???      ??!       "	1}?!8???1}?!8???!1}?!8???*      ??!       2	P:?`????P:?`????!P:?`????:	?o*Ra@?o*Ra@!?o*Ra@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?v?u??R@y%?(: 8@