	q?QeG@q?QeG@!q?QeG@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCq?QeG@C?+???1???z????Av??ң??I?.\s?@rEagerKernelExecute 0*?G?z?Z@)      =2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?Ue????!B????<@)?{???S??1)?7@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???[???!?,U??2@)???[???1?,U??2@:Preprocessing2F
Iterator::Modele???V??!???L^?@@)v?ꭁ???1ܱ=??0@:Preprocessing2U
Iterator::Model::ParallelMapV2T5A?} ??!C?M\?Q0@)T5A?} ??1C?M\?Q0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate3???yS??!???.j?@)?@H0???1??NA]?(@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?g??s?u?!???O??@)?g??s?u?1???O??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip+??	h??!+??ЯP@)/?$?u?1?L?w?~@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????g???!??????@@)??H?}]?1?h?Si???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?50.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI$??(4?Q@Qn?u\/?<@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	C?+???C?+???!C?+???      ??!       "	???z???????z????!???z????*      ??!       2	v??ң??v??ң??!v??ң??:	?.\s?@?.\s?@!?.\s?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q$??(4?Q@yn?u\/?<@