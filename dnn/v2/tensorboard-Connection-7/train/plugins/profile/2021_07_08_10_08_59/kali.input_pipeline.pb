	??jHܛ!@??jHܛ!@!??jHܛ!@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC??jHܛ!@h??'???1??+d.??A??vۅ???Ih?
?O@rEagerKernelExecute 0*	
ףp=?a@2U
Iterator::Model::ParallelMapV2g'???թ?!???G?A@)g'???թ?1???G?A@:Preprocessing2F
Iterator::Model?l?????!3&???J@)?c#????1,????x0@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?$#gaO??!???7?2@)?-s?,&??1e?n??.@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice82??????!?k?g4+@)82??????1?k?g4+@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate*??g\8??!?q???V6@)9(a??_??1
xq?y!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?? ?rh??!??Ur[?G@)P?}:3??1GH8ZO@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorMۿ?Ҥt?!?yC/n@)Mۿ?Ҥt?1?yC/n@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??m??!?$???7@)?"??\?1?@?i???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 13.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?71.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIq???!kU@Qzd????,@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	h??'???h??'???!h??'???      ??!       "	??+d.????+d.??!??+d.??*      ??!       2	??vۅ?????vۅ???!??vۅ???:	h?
?O@h?
?O@!h?
?O@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qq???!kU@yzd????,@