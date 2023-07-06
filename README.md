# RESQUE

The **Research Quality Evaluation Scheme (RESQUE)** provides objective quality and impact indicators for three types of research outputs:
(a) publications of empirical studies, (b) published data sets and (c) research software. It is primarily developed for the field of psychology, but might be easily transferred to neighbouring empirical scientific fields.

In the spirit of [CoARA](https://coara.eu), it recognises diverse academic outputs, emphasizes quality over quantity, and combines qualitative peer review by responsible use of quantitative indicators. Its main intended use is to aid decisions in hiring and tenure committees.

This repository is used for continuous development, versioning, and issue tracking.
Stable releases are tagged here and are mirrored to a [project on OSF](https://osf.io/4wynr/wiki/home/).
(The OSF project is intended to be a landing page for end-users not acquainted with Github).

## Resources

### Publications

The *general framework* of RESQUE is described in:

Schönbrodt, F. D., Gärtner, A., Frank, M., Gollwitzer, M., Ihle, M., Mischkowski, D., … Leising, D. (2022, November 25). Responsible Research Assessment I: Implementing DORA for hiring and promotion in psychology. [https://doi.org/10.31234/osf.io/rgh5b](https://doi.org/10.31234/osf.io/rgh5b)

The *specific rating scheme* is described in:

Gärtner, A., Leising, D., & Schönbrodt, F. D. (2022, November 25). Responsible Research Assessment II: A specific proposal for hiring and promotion in psychology. [https://doi.org/10.31234/osf.io/5yexm](https://doi.org/10.31234/osf.io/5yexm)

and

Gärtner, A., Leising, D., & Schönbrodt, F. D. (2023, March 3). Empfehlungen zur Bewertung wissenschaftlicher Leistungen bei Berufungsverfahren in der Psychologie. [https://doi.org/10.31234/osf.io/3yjz7](https://doi.org/10.31234/osf.io/3yjz7)

(Note: these publications refer to version 1.0 of RESQUE; as the rating scheme will be continuously updated based on community feedback and ongoing evaluation studies, some divergences to these publications will arise).

### The rating schemes
The rating schemes are provided as offline Excel files. The goal is to make data entry for applicants and hiring committees as easy and frictionless as possible.

### A coding manual
The coding manual is a companion to the rating schemes and gives guidance on how to apply the ratings, including examples, a discussion of boundary cases.
The goal of the coding manual is to increase interrater reliability, in particular when external raters rate research outputs (in contrast to applicants rating their own research).

### Analysis scripts for R
We provide R scripts that ...

- (a) read and aggregate multiple xlsx files with rating data
- (b) enrich the data with other information sources (e.g. citation counts & normalized citation counts from [OpenAlex](https://openalex.org))
- (c) create summaries and profiles that can be used in hiring and tenure committees

## How to contribute

- For minor updates and minor feature requests, please use the [issue tracker](https://github.com/nicebread/RESQUE/issues).
- If you want to collaborate scientifically on the project, please contact one of the project maintainers ([Felix Schönbrodt](mailto:felix.schoenbrodt@psy.lmu.de); [Anne Gärtner](mailto:anne_gaertner@tu-dresden.de); [Daniel Leising](mailto:Daniel.Leising@tu-dresden.de)).


## How to get started

### As hiring committees

TODO

### As applicants

TODO


