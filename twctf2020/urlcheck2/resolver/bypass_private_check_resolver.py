from twisted.internet import reactor, defer
from twisted.names import client, dns, error, server



class DynamicResolver(object):
    resolve_cnt = 0
    def _doDynamicResponse(self, query):
        """
        Calculate the response to a query.
        """
        if self.resolve_cnt % 2 == 0:
            answer = dns.RRHeader(name=query.name.name,
                                  payload=dns.Record_A(address=b'93.184.216.34'),
                                  ttl=0)
            answers = [answer]
            authority = []
            additional = []
        else:
            answer = dns.RRHeader(name=query.name.name,
                                  payload=dns.Record_A(address=b'127.0.0.1'),
                                  ttl=0)
            answers = [answer]
            authority = []
            additional = []
        self.resolve_cnt += 1
        return answers, authority, additional

    def query(self, query, timeout=None):
        return defer.succeed(self._doDynamicResponse(query))



def main():
    """
    Run the server.
    """
    factory = server.DNSServerFactory(
        clients=[DynamicResolver(), client.Resolver(resolv='/etc/resolv.conf')]
    )

    protocol = dns.DNSDatagramProtocol(controller=factory)

    reactor.listenUDP(53, protocol)
    reactor.listenTCP(53, factory)

    reactor.run()



if __name__ == '__main__':
    raise SystemExit(main())
