[
  {
    'repeat(5, 10)': {
      id: '{{objectId()}}',
      index: '{{index()}}',
      guid: '{{guid()}}',
      picture: 'http://placehold.it/32x32',
      name: '{{company()}}',
      email(name) {
        return `contato@${this.name}.com`.toLowerCase();
      },
      phone: '+1 {{phone()}}',
      address: '{{integer(100, 999)}} {{street()}}, {{city()}}, {{state()}}, {{integer(100, 10000)}}',
      registered: '{{moment(this.date(new Date(2014, 0, 1), new Date())).format("LLLL")}}',
      latitude: '{{floating(-90.000001, 90)}}',
      longitude: '{{floating(-180.000001, 180)}}',
    }
  }
]