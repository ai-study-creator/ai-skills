Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.callback](package-summary.md)

# Class ConfirmationCallback

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

javax.security.auth.callback.ConfirmationCallback

All Implemented Interfaces:
:   `Serializable`, `Callback`

---

public class ConfirmationCallback
extends [Object](../../../../java/lang/Object.md "class in java.lang")
implements [Callback](Callback.md "interface in javax.security.auth.callback"), [Serializable](../../../../java/io/Serializable.md "interface in java.io")

Underlying security services instantiate and pass a
`ConfirmationCallback` to the `handle`
method of a `CallbackHandler` to ask for YES/NO,
OK/CANCEL, YES/NO/CANCEL or other similar confirmations.

Since:
:   1.4

See Also:
:   * [`CallbackHandler`](CallbackHandler.md "interface in javax.security.auth.callback")
    * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.callback.ConfirmationCallback)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CANCEL`

  CANCEL option.

  `static final int`

  `ERROR`

  ERROR message type.

  `static final int`

  `INFORMATION`

  INFORMATION message type.

  `static final int`

  `NO`

  NO option.

  `static final int`

  `OK`

  OK option.

  `static final int`

  `OK_CANCEL_OPTION`

  OK/CANCEL confirmation option.

  `static final int`

  `UNSPECIFIED_OPTION`

  Unspecified option type.

  `static final int`

  `WARNING`

  WARNING message type.

  `static final int`

  `YES`

  YES option.

  `static final int`

  `YES_NO_CANCEL_OPTION`

  YES/NO/CANCEL confirmation option.

  `static final int`

  `YES_NO_OPTION`

  YES/NO confirmation option.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ConfirmationCallback(int messageType,
  int optionType,
  int defaultOption)`

  Construct a `ConfirmationCallback` with a
  message type, an option type and a default option.

  `ConfirmationCallback(int messageType,
  String[] options,
  int defaultOption)`

  Construct a `ConfirmationCallback` with a
  message type, a list of options and a default option.

  `ConfirmationCallback(String prompt,
  int messageType,
  int optionType,
  int defaultOption)`

  Construct a `ConfirmationCallback` with a prompt,
  message type, an option type and a default option.

  `ConfirmationCallback(String prompt,
  int messageType,
  String[] options,
  int defaultOption)`

  Construct a `ConfirmationCallback` with a prompt,
  message type, a list of options and a default option.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getDefaultOption()`

  Get the default option.

  `int`

  `getMessageType()`

  Get the message type.

  `String[]`

  `getOptions()`

  Get the confirmation options.

  `int`

  `getOptionType()`

  Get the option type.

  `String`

  `getPrompt()`

  Get the prompt.

  `int`

  `getSelectedIndex()`

  Get the selected confirmation option.

  `void`

  `setSelectedIndex(int selection)`

  Set the selected confirmation option.

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### UNSPECIFIED\_OPTION

    public static final int UNSPECIFIED\_OPTION

    Unspecified option type.

    The `getOptionType` method returns this
    value if this `ConfirmationCallback` was instantiated
    with `options` instead of an `optionType`.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.callback.ConfirmationCallback.UNSPECIFIED_OPTION)
  + ### YES\_NO\_OPTION

    public static final int YES\_NO\_OPTION

    YES/NO confirmation option.

    An underlying security service specifies this as the
    `optionType` to a `ConfirmationCallback`
    constructor if it requires a confirmation which can be answered
    with either `YES` or `NO`.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.callback.ConfirmationCallback.YES_NO_OPTION)
  + ### YES\_NO\_CANCEL\_OPTION

    public static final int YES\_NO\_CANCEL\_OPTION

    YES/NO/CANCEL confirmation option.

    An underlying security service specifies this as the
    `optionType` to a `ConfirmationCallback`
    constructor if it requires a confirmation which can be answered
    with either `YES`, `NO` or `CANCEL`.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.callback.ConfirmationCallback.YES_NO_CANCEL_OPTION)
  + ### OK\_CANCEL\_OPTION

    public static final int OK\_CANCEL\_OPTION

    OK/CANCEL confirmation option.

    An underlying security service specifies this as the
    `optionType` to a `ConfirmationCallback`
    constructor if it requires a confirmation which can be answered
    with either `OK` or `CANCEL`.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.callback.ConfirmationCallback.OK_CANCEL_OPTION)
  + ### YES

    public static final int YES

    YES option.

    If an `optionType` was specified to this
    `ConfirmationCallback`, this option may be specified as a
    `defaultOption` or returned as the selected index.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.callback.ConfirmationCallback.YES)
  + ### NO

    public static final int NO

    NO option.

    If an `optionType` was specified to this
    `ConfirmationCallback`, this option may be specified as a
    `defaultOption` or returned as the selected index.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.callback.ConfirmationCallback.NO)
  + ### CANCEL

    public static final int CANCEL

    CANCEL option.

    If an `optionType` was specified to this
    `ConfirmationCallback`, this option may be specified as a
    `defaultOption` or returned as the selected index.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.callback.ConfirmationCallback.CANCEL)
  + ### OK

    public static final int OK

    OK option.

    If an `optionType` was specified to this
    `ConfirmationCallback`, this option may be specified as a
    `defaultOption` or returned as the selected index.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.callback.ConfirmationCallback.OK)
  + ### INFORMATION

    public static final int INFORMATION

    INFORMATION message type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.callback.ConfirmationCallback.INFORMATION)
  + ### WARNING

    public static final int WARNING

    WARNING message type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.callback.ConfirmationCallback.WARNING)
  + ### ERROR

    public static final int ERROR

    ERROR message type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.callback.ConfirmationCallback.ERROR)
* ## Constructor Details

  + ### ConfirmationCallback

    public ConfirmationCallback(int messageType,
    int optionType,
    int defaultOption)

    Construct a `ConfirmationCallback` with a
    message type, an option type and a default option.

    Underlying security services use this constructor if
    they require either a YES/NO, YES/NO/CANCEL or OK/CANCEL
    confirmation.

    Parameters:
    :   `messageType` - the message type (`INFORMATION`,
        `WARNING` or `ERROR`).
    :   `optionType` - the option type (`YES_NO_OPTION`,
        `YES_NO_CANCEL_OPTION` or
        `OK_CANCEL_OPTION`).
    :   `defaultOption` - the default option
        from the provided optionType (`YES`,
        `NO`, `CANCEL` or
        `OK`).

    Throws:
    :   `IllegalArgumentException` - if messageType is not either
        `INFORMATION`, `WARNING`,
        or `ERROR`, if optionType is not either
        `YES_NO_OPTION`,
        `YES_NO_CANCEL_OPTION`, or
        `OK_CANCEL_OPTION`,
        or if `defaultOption`
        does not correspond to one of the options in
        `optionType`.
  + ### ConfirmationCallback

    public ConfirmationCallback(int messageType,
    [String](../../../../java/lang/String.md "class in java.lang")[] options,
    int defaultOption)

    Construct a `ConfirmationCallback` with a
    message type, a list of options and a default option.

    Underlying security services use this constructor if
    they require a confirmation different from the available preset
    confirmations provided (for example, CONTINUE/ABORT or STOP/GO).
    The confirmation options are listed in the `options` array,
    and are displayed by the `CallbackHandler` implementation
    in a manner consistent with the way preset options are displayed.

    Parameters:
    :   `messageType` - the message type (`INFORMATION`,
        `WARNING` or `ERROR`).
    :   `options` - the list of confirmation options. The array is cloned
        to protect against subsequent modification.
    :   `defaultOption` - the default option, represented as an index
        into the `options` array.

    Throws:
    :   `IllegalArgumentException` - if messageType is not either
        `INFORMATION`, `WARNING`,
        or `ERROR`, if `options` is null,
        if `options` has a length of 0,
        if any element from `options` is null,
        if any element from `options`
        has a length of 0, or if `defaultOption`
        does not lie within the array boundaries of
        `options`.
  + ### ConfirmationCallback

    public ConfirmationCallback([String](../../../../java/lang/String.md "class in java.lang") prompt,
    int messageType,
    int optionType,
    int defaultOption)

    Construct a `ConfirmationCallback` with a prompt,
    message type, an option type and a default option.

    Underlying security services use this constructor if
    they require either a YES/NO, YES/NO/CANCEL or OK/CANCEL
    confirmation.

    Parameters:
    :   `prompt` - the prompt used to describe the list of options.
    :   `messageType` - the message type (`INFORMATION`,
        `WARNING` or `ERROR`).
    :   `optionType` - the option type (`YES_NO_OPTION`,
        `YES_NO_CANCEL_OPTION` or
        `OK_CANCEL_OPTION`).
    :   `defaultOption` - the default option
        from the provided optionType (`YES`,
        `NO`, `CANCEL` or
        `OK`).

    Throws:
    :   `IllegalArgumentException` - if `prompt` is null,
        if `prompt` has a length of 0,
        if messageType is not either
        `INFORMATION`, `WARNING`,
        or `ERROR`, if optionType is not either
        `YES_NO_OPTION`,
        `YES_NO_CANCEL_OPTION`, or
        `OK_CANCEL_OPTION`,
        or if `defaultOption`
        does not correspond to one of the options in
        `optionType`.
  + ### ConfirmationCallback

    public ConfirmationCallback([String](../../../../java/lang/String.md "class in java.lang") prompt,
    int messageType,
    [String](../../../../java/lang/String.md "class in java.lang")[] options,
    int defaultOption)

    Construct a `ConfirmationCallback` with a prompt,
    message type, a list of options and a default option.

    Underlying security services use this constructor if
    they require a confirmation different from the available preset
    confirmations provided (for example, CONTINUE/ABORT or STOP/GO).
    The confirmation options are listed in the `options` array,
    and are displayed by the `CallbackHandler` implementation
    in a manner consistent with the way preset options are displayed.

    Parameters:
    :   `prompt` - the prompt used to describe the list of options.
    :   `messageType` - the message type (`INFORMATION`,
        `WARNING` or `ERROR`).
    :   `options` - the list of confirmation options. The array is cloned
        to protect against subsequent modification.
    :   `defaultOption` - the default option, represented as an index
        into the `options` array.

    Throws:
    :   `IllegalArgumentException` - if `prompt` is null,
        if `prompt` has a length of 0,
        if messageType is not either
        `INFORMATION`, `WARNING`,
        or `ERROR`, if `options` is null,
        if `options` has a length of 0,
        if any element from `options` is null,
        if any element from `options`
        has a length of 0, or if `defaultOption`
        does not lie within the array boundaries of
        `options`.
* ## Method Details

  + ### getPrompt

    public [String](../../../../java/lang/String.md "class in java.lang") getPrompt()

    Get the prompt.

    Returns:
    :   the prompt, or null if this `ConfirmationCallback`
        was instantiated without a `prompt`.
  + ### getMessageType

    public int getMessageType()

    Get the message type.

    Returns:
    :   the message type (`INFORMATION`,
        `WARNING` or `ERROR`).
  + ### getOptionType

    public int getOptionType()

    Get the option type.

    If this method returns `UNSPECIFIED_OPTION`, then this
    `ConfirmationCallback` was instantiated with
    `options` instead of an `optionType`.
    In this case, invoke the `getOptions` method
    to determine which confirmation options to display.

    Returns:
    :   the option type (`YES_NO_OPTION`,
        `YES_NO_CANCEL_OPTION` or
        `OK_CANCEL_OPTION`), or
        `UNSPECIFIED_OPTION` if this
        `ConfirmationCallback` was instantiated with
        `options` instead of an `optionType`.
  + ### getOptions

    public [String](../../../../java/lang/String.md "class in java.lang")[] getOptions()

    Get the confirmation options.

    Returns:
    :   a copy of the list of confirmation options, or null if this
        `ConfirmationCallback` was instantiated with
        an `optionType` instead of `options`.
  + ### getDefaultOption

    public int getDefaultOption()

    Get the default option.

    Returns:
    :   the default option, represented as
        `YES`, `NO`, `OK` or
        `CANCEL` if an `optionType`
        was specified to the constructor of this
        `ConfirmationCallback`.
        Otherwise, this method returns the default option as
        an index into the
        `options` array specified to the constructor
        of this `ConfirmationCallback`.
  + ### setSelectedIndex

    public void setSelectedIndex(int selection)

    Set the selected confirmation option.

    Parameters:
    :   `selection` - the selection represented as `YES`,
        `NO`, `OK` or `CANCEL`
        if an `optionType` was specified to the constructor
        of this `ConfirmationCallback`.
        Otherwise, the selection represents the index into the
        `options` array specified to the constructor
        of this `ConfirmationCallback`.

    See Also:
    :   - [`getSelectedIndex()`](#getSelectedIndex())
  + ### getSelectedIndex

    public int getSelectedIndex()

    Get the selected confirmation option.

    Returns:
    :   the selected confirmation option represented as
        `YES`, `NO`, `OK` or
        `CANCEL` if an `optionType`
        was specified to the constructor of this
        `ConfirmationCallback`.
        Otherwise, this method returns the selected confirmation
        option as an index into the
        `options` array specified to the constructor
        of this `ConfirmationCallback`.

    See Also:
    :   - [`setSelectedIndex(int)`](#setSelectedIndex(int))