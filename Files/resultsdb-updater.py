import logging

config = {
    'ciconsumer': True,
    'zmq_enabled': False,
    'endpoints': {},
    'validate_signatures': False,
    'stomp_heartbeat': 1000,
    'stomp_uri': 'ci-bus.lab.eng.rdu2.redhat.com:61613',
    'stomp_user': '{{ resultsdb_updater_user }}',
    'stomp_pass': '{{ resultsdb_updater_password }}',
    'resultsdb-updater.log_level': logging.INFO,
    'resultsdb-updater.resultsdb_api_url': 'https://resultsdb-backend.host.dev.eng.pek2.redhat.com/api/v2.0',
    'resultsdb-updater.resultsdb_api_ca': None
}
