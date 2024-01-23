\name{NEWS}
\title{FooRegister News}
\encoding{UTF-8}

\section{CHANGES IN fooRegister version 0.9}{
    \itemize{
        \item{Change author/maintainer e-mail address.}
        \item{Update NEWS file.}
    }
}

\section{CHANGES IN fooRegister version 0.8}{
    \itemize{
        \item{Bump version number to 0.8 to match version number
        with R package \code{foo}}.
        \item{Use C \code{switch} statement in R function \code{foo}}.
        \item{Add a lot to README file, which is not part of the package,
            only shows on GitHub.}
    }
}


\section{CHANGES IN fooRegister version 0.7-1}{
    \itemize{
        \item
        Change Fortran compiler flags in Makevars

        Required for R-3.6.0 and after

        None of this is user-visible.
    }
}

\section{CHANGES IN fooRegister version 0.7}{
    \itemize{
        \item
        Remove styles from init.c

        Required for R-3.4.0 and after

        None of this is user-visible.
    }
}

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

