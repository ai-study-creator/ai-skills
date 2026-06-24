# JVM and Library Compatibility

## Kotlin/JVM baseline
- Kotlin on the JVM is not just syntax sugar; bytecode shape, annotations, and generated overloads affect interop and library design.
- Keep the JVM target, API version, and language version aligned with the project's runtime and consumers.
- Treat bytecode level changes as compatibility changes.

## Java version support
- Track which Java bytecode levels the compiler can generate.
- Verify that the runtime and compile target match the deployment environment.
- Remember that upgrading the language can change default compiler output and metadata behavior.

## Metadata and annotations
- Annotation metadata can be part of the contract for tools and processors.
- When working with generated code or annotation processors, check what is emitted into Kotlin metadata and Java annotations.
- Be deliberate when changing annotation targets for records, properties, and constructor parameters.

## JVM records and value classes
- Records and value classes are useful for library boundaries when used with clear interop goals.
- Preserve boxing behavior and public signatures intentionally.
- Use record and value-class annotations with the consumer model in mind.

## Compiler plugins that affect libraries
- Lombok integration matters in mixed modules.
- No-arg generation exists to support frameworks that require a zero-argument constructor.
- SAM-with-receiver, kapt, and similar plugins affect public API shape and build behavior.

## Compatibility and migrations
- Read version compatibility guides before upgrading Kotlin.
- Expect source, binary, and behavioral compatibility changes.
- Watch for deprecations that affect language features, compiler flags, and build scripts.

## Practical rule
- If a Kotlin library is consumed from Java, assume the generated JVM surface is part of the public API and document it explicitly.
