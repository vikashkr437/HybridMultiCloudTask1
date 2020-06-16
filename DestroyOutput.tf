\task1>terraform destroy --auto-approve
tls_private_key.mykey1a: Refreshing state... [id=87342a99cc0409eb2033814a411b36f8f9ddc8e0]
aws_key_pair.opensshkey: Refreshing state... [id=mykey1a]
aws_security_group.allow_tls: Refreshing state... [id=sg-039202f49f45c7467]
aws_instance.myos: Refreshing state... [id=i-0af4fbd4739f56e20]
aws_ebs_volume.tervol: Refreshing state... [id=vol-0210241263c6f9173]
aws_s3_bucket.ters3: Refreshing state... [id=vkb001]
aws_volume_attachment.attachebs: Refreshing state... [id=vai-2977402859]
null_resource.create_partition: Refreshing state... [id=3521946476622368203]
aws_s3_bucket_object.pics: Refreshing state... [id=sunflower.png]
aws_cloudfront_origin_access_identity.terid: Refreshing state... [id=E8GR8BUIVI8FR]
aws_cloudfront_distribution.tercf: Refreshing state... [id=E37PBW2Q5PGHZJ]
null_resource.create_partition: Destroying... [id=3521946476622368203]
null_resource.create_partition: Destruction complete after 0s
aws_volume_attachment.attachebs: Destroying... [id=vai-2977402859]
aws_key_pair.opensshkey: Destroying... [id=mykey1a]
aws_cloudfront_distribution.tercf: Destroying... [id=E37PBW2Q5PGHZJ]
aws_key_pair.opensshkey: Destruction complete after 0s
aws_volume_attachment.attachebs: Still destroying... [id=vai-2977402859, 10s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 10s elapsed]
aws_volume_attachment.attachebs: Still destroying... [id=vai-2977402859, 20s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 20s elapsed]
aws_volume_attachment.attachebs: Still destroying... [id=vai-2977402859, 30s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 30s elapsed]
aws_volume_attachment.attachebs: Still destroying... [id=vai-2977402859, 40s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 40s elapsed]
aws_volume_attachment.attachebs: Destruction complete after 42s
aws_ebs_volume.tervol: Destroying... [id=vol-0210241263c6f9173]
aws_ebs_volume.tervol: Destruction complete after 1s
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 50s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 1m0s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 1m10s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 1m20s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 1m30s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 1m40s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 1m50s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 2m0s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 2m10s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 2m20s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 2m30s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 2m40s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 2m50s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 3m0s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 3m10s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 3m20s elapsed]
aws_cloudfront_distribution.tercf: Still destroying... [id=E37PBW2Q5PGHZJ, 3m30s elapsed]
aws_cloudfront_distribution.tercf: Destruction complete after 3m31s
aws_cloudfront_origin_access_identity.terid: Destroying... [id=E8GR8BUIVI8FR]
aws_cloudfront_origin_access_identity.terid: Destruction complete after 2s
aws_s3_bucket_object.pics: Destroying... [id=sunflower.png]
aws_s3_bucket_object.pics: Destruction complete after 1s
aws_s3_bucket.ters3: Destroying... [id=vkb001]
aws_s3_bucket.ters3: Destruction complete after 1s
aws_instance.myos: Destroying... [id=i-0af4fbd4739f56e20]
aws_instance.myos: Still destroying... [id=i-0af4fbd4739f56e20, 10s elapsed]
aws_instance.myos: Still destroying... [id=i-0af4fbd4739f56e20, 20s elapsed]
aws_instance.myos: Still destroying... [id=i-0af4fbd4739f56e20, 30s elapsed]
aws_instance.myos: Destruction complete after 31s
tls_private_key.mykey1a: Destroying... [id=87342a99cc0409eb2033814a411b36f8f9ddc8e0]
aws_security_group.allow_tls: Destroying... [id=sg-039202f49f45c7467]
tls_private_key.mykey1a: Destruction complete after 0s
aws_security_group.allow_tls: Destruction complete after 1s

Destroy complete! Resources: 11 destroyed.
