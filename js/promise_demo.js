function initialize(configuration) {
  console.log('Initializing ' + configuration);
  return new Promise((resolve, reject) => {
    if (!configuration) {
      reject('Empty configuration');
    } else {
      setTimeout(() => resolve('the initialized data'), 3000);
    }
  });
}

function process(initialData) {
  console.log('Processing ' + initialData);
  return new Promise((resolve, reject) => {
    setTimeout(() => resolve('the processed data'), 3000);
  });
}

function report(output) {
  console.log('Reporting ' + output);
  return new Promise((resolve, reject) => {
    setTimeout(() => resolve('the reported data'), 3000);
  });
}

initialize('the configuration data')
  .then(text => process(text))
  .then(value => report(value))
  .then(value => console.log('Success: ' + value))
  .catch(reason => console.log('Error: ' + reason));
