const express = require('express')
const { getSignedUrl } = require('@aws-sdk/s3-request-presigner')
const { PutObjectCommand, S3Client } = require('@aws-sdk/client-s3')
const app = express()
const {GetParameterCommand, SSMClient} = require('@aws-sdk/client-ssm')

app.get('/upload/:name', async (req, res) => {

  const client = new S3Client({region: 'us-east-1'})
  const ssmClient = new SSMClient({region: 'us-east-1'})
  const ssmCommand = new GetParameterCommand({Name: 'S3-name-certification'})
  try {
    const parameter = await ssmClient.send(ssmCommand)
    const command = new PutObjectCommand({Bucket: parameter.Parameter.Value, Key: req.params.name})

    const url = await getSignedUrl(client, command, { expiresIn: 600 })
    res.status(200).json({url})
  } catch(error) {
    console.log(error)
    res.sendStatus(500)
  }
})


app.get('/health', (req, res) => {
  res.sendStatus(204)
})


app.listen(8080, () => {
  console.log('app started')
})
