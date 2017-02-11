\name{NEWS}
\title{FooRegister News}
\encoding{UTF-8}

\section{CHANGES IN fooRegister version 0.6}{
    \itemize{
        \item
        Suck in all the code from R package \code{foo} version 0.5,
        which is in the same git repo as this package.  Change the name
        of the package from \code{foo} to \code{fooRegister} and make
        all the changes to the code that that requires.

        \item
        Then make all the changes required to register native routines
        following \emph{Writing R Extensions}, Section 5.4.  This requires
        new files \code{src/init.c} and \code{src/foo.h} and corresponding
        changes to \code{NAMESPACE} and R source files.

        None of this is user-visible.

        \item
        See \code{NEWS} for R package \code{foo} for earlier changes to
        that package (all of which were sucked into this package when it
        was created).
    }
}

