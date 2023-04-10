import http from 'k6/http';
import { check } from 'k6';
import { sleep } from 'k6';

export const options = {
  stages: [
    { target: 1, duration: '29m' },
    { target: 1, duration: '29m' }
  ],
};

export default function () {
  const incluster = http.get('http://api.gcpdev.mzc-heimdall.com/swagger/');
  check(incluster, {
    'incluster http response status code is 200': incluster.status === 200,
  });

  sleep(1);
}
