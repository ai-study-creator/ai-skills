Module [java.xml](../../../module-summary.md)

Package [javax.xml.transform](package-summary.md)

# Interface ErrorListener

---

public interface ErrorListener

The listener interface used by a [`TransformerFactory`](TransformerFactory.md "class in javax.xml.transform") or [`Transformer`](Transformer.md "class in javax.xml.transform")
to notify callers of error messages that occur during a transformation process.
An ErrorListener receives three levels of messages: warnings, errors and fatal
errors as classified by their severity. Each of them is handled as described
in their respective method.

An ErrorListener instance can be registered to a [`TransformerFactory`](TransformerFactory.md "class in javax.xml.transform")
or [`Transformer`](Transformer.md "class in javax.xml.transform") through
the [`TransformerFactory.setErrorListener(ErrorListener)`](TransformerFactory.md#setErrorListener(javax.xml.transform.ErrorListener))
or [`Transformer.setErrorListener(ErrorListener)`](Transformer.md#setErrorListener(javax.xml.transform.ErrorListener))
method to receive errors and warnings reported by the TransformerFactory
or Transformer.

When a listener is registered, the [`TransformerFactory`](TransformerFactory.md "class in javax.xml.transform") or [`Transformer`](Transformer.md "class in javax.xml.transform")
must use this interface to pass on all warnings and errors to the listener
and let the application decide how to handle them.
Note that the `TransformerFactory` or `Transformer` is not
required to continue with the transformation after a call to
[`fatalError(TransformerException exception)`](#fatalError(javax.xml.transform.TransformerException)).

If an application does not provide a listener, the [`TransformerFactory`](TransformerFactory.md "class in javax.xml.transform")
or [`Transformer`](Transformer.md "class in javax.xml.transform") shall create one on its own. The default `ErrorListener`
may take no action for warnings and recoverable errors, and allow the
transformation to continue.
However, the `TransformerFactory` or `Transformer` may still throw
`TransformerException` when it decides it can not continue processing.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `error(TransformerException exception)`

  Receive notification of a recoverable error.

  `void`

  `fatalError(TransformerException exception)`

  Receive notification of a non-recoverable error.

  `void`

  `warning(TransformerException exception)`

  Receive notification of a warning.

* ## Method Details

  + ### warning

    void warning([TransformerException](TransformerException.md "class in javax.xml.transform") exception)
    throws [TransformerException](TransformerException.md "class in javax.xml.transform")

    Receive notification of a warning.

    [`Transformer`](Transformer.md "class in javax.xml.transform") can use this method to report
    conditions that are not errors or fatal errors. The default behaviour
    is to take no action.

    After invoking this method, the Transformer must continue with
    the transformation. It should still be possible for the
    application to process the document through to the end.

    Parameters:
    :   `exception` - The warning information encapsulated in a
        transformer exception.

    Throws:
    :   `TransformerException` - if the application
        chooses to discontinue the transformation.

    See Also:
    :   - [`TransformerException`](TransformerException.md "class in javax.xml.transform")
  + ### error

    void error([TransformerException](TransformerException.md "class in javax.xml.transform") exception)
    throws [TransformerException](TransformerException.md "class in javax.xml.transform")

    Receive notification of a recoverable error.

    The transformer must continue to try and provide normal transformation
    after invoking this method. It should still be possible for the
    application to process the document through to the end if no other errors
    are encountered.

    Parameters:
    :   `exception` - The error information encapsulated in a
        transformer exception.

    Throws:
    :   `TransformerException` - if the application
        chooses to discontinue the transformation.

    See Also:
    :   - [`TransformerException`](TransformerException.md "class in javax.xml.transform")
  + ### fatalError

    void fatalError([TransformerException](TransformerException.md "class in javax.xml.transform") exception)
    throws [TransformerException](TransformerException.md "class in javax.xml.transform")

    Receive notification of a non-recoverable error.

    The processor may choose to continue, but will not normally
    proceed to a successful completion.

    The method should throw an exception if it is unable to
    process the error, or if it wishes execution to terminate
    immediately. The processor will not necessarily honor this
    request.

    Parameters:
    :   `exception` - The error information encapsulated in a
        `TransformerException`.

    Throws:
    :   `TransformerException` - if the application
        chooses to discontinue the transformation.

    See Also:
    :   - [`TransformerException`](TransformerException.md "class in javax.xml.transform")