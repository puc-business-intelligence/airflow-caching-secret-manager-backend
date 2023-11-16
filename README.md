# Airflow Caching Secret Manager Backend

This is a Python class that is implemented after google-cloud-secret-manager version <2.0.
It provides a backend for storing and retrieving secrets using Cloud Secret Manager.
It respects environment variable overrides from `AIRFLOW_VAR_*` and `AIRFLOW_CONN_*`

## Publishing a new version

Since this Airflow component needs to be configured as a Pyton package, publishing it requires
access to the PyPi package publisher.
To help building, we use a package called "build".
To help with publishing we use a command line tool "twine".

```console
$ pip install twine
$ pip install build
```

The build & publish step is available as a make task.
The following step will attempt to build & publish the Python package.
In the process it will ask you for the PyPi username and password.
The PyPi username and password is known to the maintainers of this repository.

```console
$ make build
# ... snip
Successfully built airflow-caching-google-secret-manager-backend-1.0.4.tar.gz and airflow_caching_google_secret_manager_backend-1.0.4-py3-none-any.whl
twine upload dist/*
Uploading distributions to https://upload.pypi.org/legacy/
Enter your username: _
```

## Configuration

Configuration is done via the Airflow configuration `secrets.secret_manager_backend_kwargs`.

- `project_id` (str): Google Cloud project ID.
- `connections_prefix` (str): Prefix for secret connection values. Default is "af-conn-".
- `variables_prefix` (str): Prefix for Airflow variable values. Default is "af-var-".

## License

This code is licensed under MIT License.

