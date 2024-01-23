\name{NEWS}
\title{Foo News}
\encoding{UTF-8}

\section{CHANGES IN foo version 0.9}{
    \itemize{
        \item{Change author/maintainer e-mail address.}
        \item{Update NEWS file.}
    }
}

\section{CHANGES IN foo version 0.8}{
    \itemize{
        \item{Bump version number to 0.8 to match version number
        with R package \code{fooRegister}}.
        \item{Use C \code{switch} statement in R function \code{foo}}.
        \item{Add a lot to README file, which is not part of the package,
            only shows on GitHub.}
    }
}

\section{CHANGES IN foo version 0.5}{
    \itemize{
        \item License change to CC0
        \url{https://creativecommons.org/publicdomain/zero/1.0/legalcode}
        following discussion on the r-devel mailing list.  CRAN allows
        \dQuote{Unlimited} for license field in \code{DESCRIPTION} file
        (which is what we had before), but it is legally very unclear
        what that means.  CC0 expresses the intent with appropriate
        legalese.

        \item Moved what was in file \code{CHANGES} (which is not a name
        recommended by \emph{Writing R Extensions}) to this file
        (\code{NEWS.Rd}).
    }
}

\section{CHANGES IN foo version 0.4-2}{
    \itemize{
        \item Fixed Title field in \code{DESCRIPTION} because
        \code{R CMD check --as-cran} complained.
    }
}

\section{CHANGES IN foo version 0.4-1}{
    \itemize{
        \item No changes to package, only changes to \code{README.md}
        for Github.
    }
}

\section{CHANGES IN foo version 0.4}{
    \itemize{
        \item Added type \code{"Call"} to R function \code{myrandom}.

        \item Allowed \code{myrandom} to generate just one random variate.
        (Why was test ever \code{n > 1} ????)
    }
}

\section{CHANGES IN foo version 0.3}{
    \itemize{
        \item Licence change to \dQuote{Unlimited}.
    }
}

\section{CHANGES IN foo version 0.2-1}{
    \itemize{
        \item Added \code{PACKAGE} argument to \code{.C}, \code{.Fortran},
        and \code{.Call}.

        \item Changed \code{type} option in \code{tests/foo.R} so all
        options are tried.
    }
}

\section{CHANGES IN foo version 0.2}{
    \itemize{
        \item Added \code{bar.c} and \code{baz.c} illustrating \code{.C}
        and \code{.Call}.
    }
}

\section{CHANGES IN foo version 0.1-2}{
    \itemize{
        \item Fixed \code{tests/foo.Rout.save} which had erroneously bogus
        result \code{FALSE}.

        \item Fixed \code{src/foo.f} which needed \code{double precision x(n)}.
    }
}

\section{CHANGES IN foo version 0.1-1}{
    \itemize{
        \item Fixed \code{tests/foo.Rout.save} which erroneously
        had \code{valgrind} output.
    }
}

