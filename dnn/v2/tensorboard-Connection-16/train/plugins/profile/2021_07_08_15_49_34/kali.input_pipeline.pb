	?????@?????@!?????@		3[X	@	3[X	@!	3[X	@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?????@L?{)<h??1^M??????AS??.???Il??g?
@Y}?E???rEagerKernelExecute 0*	??(\?Za@2F
Iterator::Model?[ A?c??!0???p?C@){?G?z??1?G?i??<@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatƊL????!S?6?O=9@)?D?$??1?J??4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?)Wx????!v ED1@)?)Wx????1v ED1@:Preprocessing2U
Iterator::Model::ParallelMapV2??????!3m?f?A&@)??????13m?f?A&@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?1w-!??!rB?N<@)?r.?Ue??1	???&@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?#EdX??!?@q?N@)y?&1?|?1peY0&+@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?A?L??z?!E1?7\?@)?A?L??z?1E1?7\?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap
?8?*??!?U?]?=@)?7?0?`?1?>??????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?54.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9	3[X	@IC??H?iR@Q?E??378@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	L?{)<h??L?{)<h??!L?{)<h??      ??!       "	^M??????^M??????!^M??????*      ??!       2	S??.???S??.???!S??.???:	l??g?
@l??g?
@!l??g?
@B      ??!       J	}?E???}?E???!}?E???R      ??!       Z	}?E???}?E???!}?E???b      ??!       JGPUY	3[X	@b qC??H?iR@y?E??378@