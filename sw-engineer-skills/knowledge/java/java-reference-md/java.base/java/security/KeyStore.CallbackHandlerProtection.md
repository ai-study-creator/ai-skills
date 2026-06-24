Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class KeyStore.CallbackHandlerProtection

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.KeyStore.CallbackHandlerProtection

All Implemented Interfaces:
:   `KeyStore.ProtectionParameter`

Enclosing class:
:   `KeyStore`

---

public static class KeyStore.CallbackHandlerProtection
extends [Object](../lang/Object.md "class in java.lang")
implements [KeyStore.ProtectionParameter](KeyStore.ProtectionParameter.md "interface in java.security")

A `ProtectionParameter` encapsulating a CallbackHandler.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CallbackHandlerProtection(CallbackHandler handler)`

  Constructs a new CallbackHandlerProtection from a
  CallbackHandler.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `CallbackHandler`

  `getCallbackHandler()`

  Returns the CallbackHandler.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CallbackHandlerProtection

    public CallbackHandlerProtection([CallbackHandler](../../javax/security/auth/callback/CallbackHandler.md "interface in javax.security.auth.callback") handler)

    Constructs a new CallbackHandlerProtection from a
    CallbackHandler.

    Parameters:
    :   `handler` - the CallbackHandler

    Throws:
    :   `NullPointerException` - if handler is `null`
* ## Method Details

  + ### getCallbackHandler

    public [CallbackHandler](../../javax/security/auth/callback/CallbackHandler.md "interface in javax.security.auth.callback") getCallbackHandler()

    Returns the CallbackHandler.

    Returns:
    :   the CallbackHandler.