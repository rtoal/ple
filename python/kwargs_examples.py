def write_rule(selector, **options):
    print(selector, '{')
    for prop, value in options.items():
        print('  {}: {};'.format(prop.replace('_','-'), value))
    print('}')

write_rule('h1', font_family='Helvetica', size='20px')
write_rule('p.error', color='red', margin='16px', padding='0')