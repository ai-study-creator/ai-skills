Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.metadata](package-summary.md)

# Interface IIOMetadataController

---

public interface IIOMetadataController

An interface to be implemented by objects that can determine the
settings of an `IIOMetadata` object, either by putting
up a GUI to obtain values from a user, or by other means. This
interface merely specifies a generic `activate` method
that invokes the controller, without regard for how the controller
obtains values (*i.e.*, whether the controller puts up a GUI
or merely computes a set of values is irrelevant to this
interface).

Within the `activate` method, a controller obtains
initial values by querying the `IIOMetadata` object's
settings, either using the XML DOM tree or a plug-in specific
interface, modifies values by whatever means, then modifies the
`IIOMetadata` object's settings, using either the
`setFromTree` or `mergeTree` methods, or a
plug-in specific interface. In general, applications may expect
that when the `activate` method returns
`true`, the `IIOMetadata` object is ready for
use in a write operation.

Vendors may choose to provide GUIs for the
`IIOMetadata` subclasses they define for a particular
plug-in. These can be set up as default controllers in the
corresponding `IIOMetadata` subclasses.

Alternatively, an algorithmic process such as a database lookup
or the parsing of a command line could be used as a controller, in
which case the `activate` method would simply look up or
compute the settings, call methods on `IIOMetadata` to
set its state, and return `true`.

See Also:
:   * [`IIOMetadata.setController(javax.imageio.metadata.IIOMetadataController)`](IIOMetadata.md#setController(javax.imageio.metadata.IIOMetadataController))
    * [`IIOMetadata.getController()`](IIOMetadata.md#getController())
    * [`IIOMetadata.getDefaultController()`](IIOMetadata.md#getDefaultController())
    * [`IIOMetadata.hasController()`](IIOMetadata.md#hasController())
    * [`IIOMetadata.activateController()`](IIOMetadata.md#activateController())

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `activate(IIOMetadata metadata)`

  Activates the controller.

* ## Method Details

  + ### activate

    boolean activate([IIOMetadata](IIOMetadata.md "class in javax.imageio.metadata") metadata)

    Activates the controller. If `true` is returned,
    all settings in the `IIOMetadata` object should be
    ready for use in a write operation. If `false` is
    returned, no settings in the `IIOMetadata` object
    will be disturbed (*i.e.*, the user canceled the
    operation).

    Parameters:
    :   `metadata` - the `IIOMetadata` object to be modified.

    Returns:
    :   `true` if the `IIOMetadata` has been
        modified, `false` otherwise.

    Throws:
    :   `IllegalArgumentException` - if `metadata` is
        `null` or is not an instance of the correct class.