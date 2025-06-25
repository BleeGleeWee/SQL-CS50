# From "The Deep"

In this section, we will be writing freeform responses to the provided questions.

## Partitioning at Random

In terms of accessibility and having a backup on other boats in case of a potential boat data loss, distributing the data across three boats might be beneficial, but it takes up extra space. Rather, each boat would be in its own time zone, which would save space.

## Hourly Partitioning

Each database does not need to occupy more space than is required if the data is separated into three fields based on time periods. Since each database must operate on its own schedule, it may be more effective.

## Hash Value-Based Partitioning

By searching for small hash values rather than the full date in potential date searches, entering the hash value reduces database running time. Using an index can also speed up the search. Giving the same hash value to the same date, however, can occasionally be challenging if all hash values are provided.
