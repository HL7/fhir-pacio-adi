This profile defines the requirements for communicating a Portable Medical Order (PMO) using a Composition Resource. It is used to create a provider-generated document which is authored in collaboration with the subject of the document (the patient). It contains information about the person's medical orders, goals, preferences, and priorities (GPPs) for care and treatment under certain future conditions.

It is possible for a PMO composition to only contain textual information and not have any encoded entries. In this case, an implementer may populate the `section.text` element in place of a resource reference in the `section.entry` element.

For a provider-authored composition, the attester is set to *legal*.