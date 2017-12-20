class profile::redact (
  $a='a',
  $b='b',
  $c='c',
)
{
  # this call will display the proper output, but because it's not a resource the string won't exist in the catalog.
  notice("Class['redact_test'] was called with the following parameters ${a}, ${b}, ${c}")

  # but the catalog won't record what the passed in param was.
  redact('a')
  redact('b')
}
