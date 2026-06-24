Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class PrinterStateReason

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.PrinterStateReason

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`

---

public class PrinterStateReason
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [Attribute](../Attribute.md "interface in javax.print.attribute")

Class `PrinterStateReason` is a printing attribute class, an
enumeration, that provides additional information about the printer's current
state, i.e., information that augments the value of the printer's
[`PrinterState`](PrinterState.md "class in javax.print.attribute.standard") attribute. Class PrinterStateReason defines
standard printer state reason values. A Print Service implementation only
needs to report those printer state reasons which are appropriate for the
particular implementation; it does not have to report every defined printer
state reason.

Instances of `PrinterStateReason` do not appear in a Print Service's
attribute set directly. Rather, a
[`PrinterStateReasons`](PrinterStateReasons.md "class in javax.print.attribute.standard") attribute appears in the
Print Service's attribute set. The
[`PrinterStateReasons`](PrinterStateReasons.md "class in javax.print.attribute.standard") attribute contains zero, one,
or more than one `PrinterStateReason` objects which pertain to the
Print Service's status, and each PrinterStateReason object is associated with
a [`Severity`](Severity.md "class in javax.print.attribute.standard") level of `REPORT` (least severe),
`WARNING`, or `ERROR` (most severe). The printer adds a
`PrinterStateReason` object to the Print Service's
[`PrinterStateReasons`](PrinterStateReasons.md "class in javax.print.attribute.standard") attribute when the
corresponding condition becomes true of the printer, and the printer removes
the `PrinterStateReason` object again when the corresponding condition
becomes false, regardless of whether the Print Service's overall
[`PrinterState`](PrinterState.md "class in javax.print.attribute.standard") also changed.

**IPP Compatibility:** The string values returned by each individual
[`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") and associated [`Severity`](Severity.md "class in javax.print.attribute.standard") object's
`toString()` methods, concatenated together with a hyphen (`"-"`)
in between, gives the IPP keyword value for a [`PrinterStateReasons`](PrinterStateReasons.md "class in javax.print.attribute.standard").
The category name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.PrinterStateReason)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final PrinterStateReason`

  `CONNECTING_TO_DEVICE`

  The printer has scheduled a job on the output device and is in the
  process of connecting to a shared network output device (and might not be
  able to actually start printing the job for an arbitrarily long time
  depending on the usage of the output device by other servers on the
  network).

  `static final PrinterStateReason`

  `COVER_OPEN`

  One or more covers on the device are open.

  `static final PrinterStateReason`

  `DEVELOPER_EMPTY`

  The device is out of developer.

  `static final PrinterStateReason`

  `DEVELOPER_LOW`

  The device is low on developer.

  `static final PrinterStateReason`

  `DOOR_OPEN`

  One or more doors on the device are open.

  `static final PrinterStateReason`

  `FUSER_OVER_TEMP`

  The fuser temperature is above normal.

  `static final PrinterStateReason`

  `FUSER_UNDER_TEMP`

  The fuser temperature is below normal.

  `static final PrinterStateReason`

  `INPUT_TRAY_MISSING`

  One or more input trays are not in the device.

  `static final PrinterStateReason`

  `INTERLOCK_OPEN`

  One or more interlock devices on the printer are unlocked.

  `static final PrinterStateReason`

  `INTERPRETER_RESOURCE_UNAVAILABLE`

  An interpreter resource is unavailable (e.g., font, form).

  `static final PrinterStateReason`

  `MARKER_SUPPLY_EMPTY`

  The device is out of at least one marker supply (e.g.

  `static final PrinterStateReason`

  `MARKER_SUPPLY_LOW`

  The device is low on at least one marker supply (e.g.

  `static final PrinterStateReason`

  `MARKER_WASTE_ALMOST_FULL`

  The device marker supply waste receptacle is almost full.

  `static final PrinterStateReason`

  `MARKER_WASTE_FULL`

  The device marker supply waste receptacle is full.

  `static final PrinterStateReason`

  `MEDIA_EMPTY`

  At least one input tray is empty.

  `static final PrinterStateReason`

  `MEDIA_JAM`

  The device has a media jam.

  `static final PrinterStateReason`

  `MEDIA_LOW`

  At least one input tray is low on media.

  `static final PrinterStateReason`

  `MEDIA_NEEDED`

  A tray has run out of media.

  `static final PrinterStateReason`

  `MOVING_TO_PAUSED`

  Someone has paused the printer, but the device(s) are taking an
  appreciable time to stop.

  `static final PrinterStateReason`

  `OPC_LIFE_OVER`

  The optical photo conductor is no longer functioning.

  `static final PrinterStateReason`

  `OPC_NEAR_EOL`

  The optical photo conductor is near end of life.

  `static final PrinterStateReason`

  `OTHER`

  The printer has detected an error other than ones listed below.

  `static final PrinterStateReason`

  `OUTPUT_AREA_ALMOST_FULL`

  One or more output areas are almost full (e.g.

  `static final PrinterStateReason`

  `OUTPUT_AREA_FULL`

  One or more output areas are full (e.g.

  `static final PrinterStateReason`

  `OUTPUT_TRAY_MISSING`

  One or more output trays are not in the device.

  `static final PrinterStateReason`

  `PAUSED`

  Someone has paused the printer and the printer's
  [`PrinterState`](PrinterState.md "class in javax.print.attribute.standard") is `STOPPED`.

  `static final PrinterStateReason`

  `SHUTDOWN`

  Someone has removed a printer from service, and the device may be powered
  down or physically removed.

  `static final PrinterStateReason`

  `SPOOL_AREA_FULL`

  The limit of persistent storage allocated for spooling has been reached.

  `static final PrinterStateReason`

  `STOPPED_PARTLY`

  When a printer controls more than one output device, this reason
  indicates that one or more output devices are stopped.

  `static final PrinterStateReason`

  `STOPPING`

  The printer is in the process of stopping the device and will be stopped
  in a while.

  `static final PrinterStateReason`

  `TIMED_OUT`

  The server was able to connect to the output device (or is always
  connected), but was unable to get a response from the output device.

  `static final PrinterStateReason`

  `TONER_EMPTY`

  The device is out of toner.

  `static final PrinterStateReason`

  `TONER_LOW`

  The device is low on toner.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `PrinterStateReason(int value)`

  Construct a new printer state reason enumeration value with the given
  integer value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `protected EnumSyntax[]`

  `getEnumValueTable()`

  Returns the enumeration value table for class `PrinterStateReason`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `PrinterStateReason`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### OTHER

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") OTHER

    The printer has detected an error other than ones listed below.
  + ### MEDIA\_NEEDED

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") MEDIA\_NEEDED

    A tray has run out of media.
  + ### MEDIA\_JAM

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") MEDIA\_JAM

    The device has a media jam.
  + ### MOVING\_TO\_PAUSED

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") MOVING\_TO\_PAUSED

    Someone has paused the printer, but the device(s) are taking an
    appreciable time to stop. Later, when all output has stopped, the
    [`PrinterState`](PrinterState.md "class in javax.print.attribute.standard") becomes `STOPPED`, and the
    `PAUSED` value replaces the `MOVING_TO_PAUSED` value in the
    [`PrinterStateReasons`](PrinterStateReasons.md "class in javax.print.attribute.standard") attribute. This value
    must be supported if the printer can be paused and the implementation
    takes significant time to pause a device in certain circumstances.
  + ### PAUSED

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") PAUSED

    Someone has paused the printer and the printer's
    [`PrinterState`](PrinterState.md "class in javax.print.attribute.standard") is `STOPPED`. In this state, a
    printer must not produce printed output, but it must perform other
    operations requested by a client. If a printer had been printing a job
    when the printer was paused, the `Printer` must resume printing
    that job when the printer is no longer paused and leave no evidence in
    the printed output of such a pause. This value must be supported if the
    printer can be paused.
  + ### SHUTDOWN

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") SHUTDOWN

    Someone has removed a printer from service, and the device may be powered
    down or physically removed. In this state, a printer must not produce
    printed output, and unless the printer is realized by a print server that
    is still active, the printer must perform no other operations requested
    by a client. If a printer had been printing a job when it was shut down,
    the printer need not resume printing that job when the printer is no
    longer shut down. If the printer resumes printing such a job, it may
    leave evidence in the printed output of such a shutdown, e.g. the part
    printed before the shutdown may be printed a second time after the
    shutdown.
  + ### CONNECTING\_TO\_DEVICE

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") CONNECTING\_TO\_DEVICE

    The printer has scheduled a job on the output device and is in the
    process of connecting to a shared network output device (and might not be
    able to actually start printing the job for an arbitrarily long time
    depending on the usage of the output device by other servers on the
    network).
  + ### TIMED\_OUT

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") TIMED\_OUT

    The server was able to connect to the output device (or is always
    connected), but was unable to get a response from the output device.
  + ### STOPPING

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") STOPPING

    The printer is in the process of stopping the device and will be stopped
    in a while. When the device is stopped, the printer will change the
    [`PrinterState`](PrinterState.md "class in javax.print.attribute.standard") to `STOPPED`. The
    `STOPPING` reason is never an error, even for a printer with a
    single output device. When an output device ceases accepting jobs, the
    printer's [`PrinterStateReasons`](PrinterStateReasons.md "class in javax.print.attribute.standard") will have this
    reason while the output device completes printing.
  + ### STOPPED\_PARTLY

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") STOPPED\_PARTLY

    When a printer controls more than one output device, this reason
    indicates that one or more output devices are stopped. If the reason's
    severity is a report, fewer than half of the output devices are stopped.
    If the reason's severity is a warning, half or more but fewer than all of
    the output devices are stopped.
  + ### TONER\_LOW

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") TONER\_LOW

    The device is low on toner.
  + ### TONER\_EMPTY

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") TONER\_EMPTY

    The device is out of toner.
  + ### SPOOL\_AREA\_FULL

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") SPOOL\_AREA\_FULL

    The limit of persistent storage allocated for spooling has been reached.
    The printer is temporarily unable to accept more jobs. The printer will
    remove this reason when it is able to accept more jobs. This value should
    be used by a non-spooling printer that only accepts one or a small number
    jobs at a time or a spooling printer that has filled the spool space.
  + ### COVER\_OPEN

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") COVER\_OPEN

    One or more covers on the device are open.
  + ### INTERLOCK\_OPEN

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") INTERLOCK\_OPEN

    One or more interlock devices on the printer are unlocked.
  + ### DOOR\_OPEN

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") DOOR\_OPEN

    One or more doors on the device are open.
  + ### INPUT\_TRAY\_MISSING

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") INPUT\_TRAY\_MISSING

    One or more input trays are not in the device.
  + ### MEDIA\_LOW

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") MEDIA\_LOW

    At least one input tray is low on media.
  + ### MEDIA\_EMPTY

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") MEDIA\_EMPTY

    At least one input tray is empty.
  + ### OUTPUT\_TRAY\_MISSING

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") OUTPUT\_TRAY\_MISSING

    One or more output trays are not in the device.
  + ### OUTPUT\_AREA\_ALMOST\_FULL

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") OUTPUT\_AREA\_ALMOST\_FULL

    One or more output areas are almost full (e.g. tray, stacker, collator).
  + ### OUTPUT\_AREA\_FULL

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") OUTPUT\_AREA\_FULL

    One or more output areas are full (e.g. tray, stacker, collator).
  + ### MARKER\_SUPPLY\_LOW

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") MARKER\_SUPPLY\_LOW

    The device is low on at least one marker supply (e.g. toner, ink,
    ribbon).
  + ### MARKER\_SUPPLY\_EMPTY

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") MARKER\_SUPPLY\_EMPTY

    The device is out of at least one marker supply (e.g. toner, ink,
    ribbon).
  + ### MARKER\_WASTE\_ALMOST\_FULL

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") MARKER\_WASTE\_ALMOST\_FULL

    The device marker supply waste receptacle is almost full.
  + ### MARKER\_WASTE\_FULL

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") MARKER\_WASTE\_FULL

    The device marker supply waste receptacle is full.
  + ### FUSER\_OVER\_TEMP

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") FUSER\_OVER\_TEMP

    The fuser temperature is above normal.
  + ### FUSER\_UNDER\_TEMP

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") FUSER\_UNDER\_TEMP

    The fuser temperature is below normal.
  + ### OPC\_NEAR\_EOL

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") OPC\_NEAR\_EOL

    The optical photo conductor is near end of life.
  + ### OPC\_LIFE\_OVER

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") OPC\_LIFE\_OVER

    The optical photo conductor is no longer functioning.
  + ### DEVELOPER\_LOW

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") DEVELOPER\_LOW

    The device is low on developer.
  + ### DEVELOPER\_EMPTY

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") DEVELOPER\_EMPTY

    The device is out of developer.
  + ### INTERPRETER\_RESOURCE\_UNAVAILABLE

    public static final [PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") INTERPRETER\_RESOURCE\_UNAVAILABLE

    An interpreter resource is unavailable (e.g., font, form).
* ## Constructor Details

  + ### PrinterStateReason

    protected PrinterStateReason(int value)

    Construct a new printer state reason enumeration value with the given
    integer value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `PrinterStateReason`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class `PrinterStateReason`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `PrinterStateReason` and any vendor-defined subclasses,
    the category is class `PrinterStateReason` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `PrinterStateReason` and any vendor-defined subclasses,
    the category name is `"printer-state-reason"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name