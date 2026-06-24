Module [java.xml.crypto](../../../module-summary.md)

Package [javax.xml.crypto](package-summary.md)

# Interface Data

All Known Subinterfaces:
:   `NodeSetData<T>`

All Known Implementing Classes:
:   `OctetStreamData`

---

public interface Data

An abstract representation of the result of dereferencing a
[`URIReference`](URIReference.md "interface in javax.xml.crypto") or the input/output of subsequent [`Transform`](dsig/Transform.md "interface in javax.xml.crypto.dsig")s.
The primary purpose of this interface is to group and provide type safety
for all `Data` subtypes.

Since:
:   1.6